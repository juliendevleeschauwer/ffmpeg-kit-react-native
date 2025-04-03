Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-ios-full"
  s.version      = "6.0"
  s.summary      = "FFmpeg Kit iOS Full Shared Framework"
  s.description  = "Includes FFmpeg with dav1d, fontconfig, freetype, fribidi..."
  s.homepage     = "https://github.com/arthenica/ffmpeg-kit"
  s.license      = {
    :type => "LGPL-3.0",
    :file => "LICENSE"
  }
  s.authors      = {
    "ARTHENICA" => "open-source@arthenica.com"
  }

  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.libraries    = ["z", "bz2", "c++", "iconv"]

  s.source = {
    :http => "https://github.com/juliendevleeschauwer/ffmpeg-kit-ios-full/archive/refs/tags/v6.0.zip"  
  }

  s.ios.frameworks = ["AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox"]

  s.ios.vendored_frameworks = [
    "**/ffmpegkit.xcframework",
    "**/libavcodec.xcframework",
    "**/libavdevice.xcframework",
    "**/libavfilter.xcframework",
    "**/libavformat.xcframework",
    "**/libavutil.xcframework",
    "**/libswresample.xcframework",
    "**/libswscale.xcframework"
  ]
end
