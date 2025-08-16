def shadowplay_clipper [-i: string --ss: string --to: string --filter_complex: string = "" --vf: string = "" -o: string] {
    mut filter_complex = $filter_complex
    mut vf = $vf
    if $filter_complex == "" {
        $filter_complex = "amix=inputs=2:duration=longest"
    }

    ### Set hardware acceleration. ###
    mut hwaccel = "cuda"
    mut hwaccel_output_format = "cuda"
    let cv = "hevc_nvenc"

    ### Check if video is in HDR format. ###
    let color_transfer = ffprobe -v quiet -show_streams -select_streams v:0 $i | parse --regex '(?<=color_transfer=)(?P<color_transfer>.+)' | get color_transfer
    let color_transfer = $color_transfer.0

    if $vf != "" {
        $vf = $vf + ","
    }

    match $color_transfer {
        "smpte2084" | "arib-std-b67" => {
            let tonemap = "hwupload=derive_device=vulkan,libplacebo=tonemapping=auto:colorspace=bt709:color_primaries=bt709:color_trc=bt709:format=yuv420p:upscaler=none:downscaler=none:peak_detect=0,hwdownload,format=yuv420p"
            $hwaccel = "vulkan"
            $hwaccel_output_format = "vulkan"

            if $vf != "" {
                $vf = $vf + $tonemap
            } else {
                $vf = $tonemap
            }
        }
    }
    let inputs = if $vf != "" {
        ['-hwaccel' $hwaccel '-hwaccel_output_format' $hwaccel_output_format '-ss' $ss '-to' $to '-i' $i '-vf:v' $vf '-filter_complex' $filter_complex '-c:v' $cv '-y' $o]
    } else {
        ['-hwaccel' $hwaccel '-hwaccel_output_format' $hwaccel_output_format '-ss' $ss '-to' $to '-i' $i '-filter_complex' $filter_complex '-c:v' $cv '-y' $o]
    }

    print ...$inputs

    ffmpeg ...$inputs
}
