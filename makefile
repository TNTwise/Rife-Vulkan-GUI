all: BuildApp
BuildApp:
        #curl -O "https://bootstrap.pypa.io/get-pip.py" > get-pip.py
		python3 GUI.py --compile-appimage
		pyinstaller --icon=icons/icon-256x256.png -F --noconfirm --add-data="icons/icon-256x256.png":"./icons/" --add-data="/usr/bin/ffprobe":"." --add-data="rife-vulkan-models/rife-v4.6/*:./rife-vulkan-models/rife-v4.6/" --add-data="rife-vulkan-models/rife-v4/*:./rife-vulkan-models/rife-v4/" --add-data="rife-vulkan-models/rife-v3.1/*:./rife-vulkan-models/rife-v3.1/" --add-data="rife-vulkan-models/rife-v3.0/*:./rife-vulkan-models/rife-v3.0/" --add-data="rife-vulkan-models/rife-v2.4/*:./rife-vulkan-models/rife-v2.4/" --add-data="rife-vulkan-models/rife-v2.3/*:./rife-vulkan-models/rife-v2.3/" --add-data="rife-vulkan-models/rife-v2/*:./rife-vulkan-models/rife-v2/" --add-data="rife-vulkan-models/rife-anime/*:./rife-vulkan-models/rife-anime/" --add-data="rife-vulkan-models/rife-HD/*:./rife-vulkan-models/rife-HD/" --add-data="rife-vulkan-models/rife-UHD/*:./rife-vulkan-models/rife-UHD/" --add-data="rife-vulkan-models/rife/*:./rife-vulkan-models/rife/"  --add-data="rife-vulkan-models/rife-ncnn-vulkan:./rife-vulkan-models/" --add-data="Real-ESRGAN/models/*:./Real-ESRGAN/models/" --add-data="Real-ESRGAN/realesrgan-ncnn-vulkan:./Real-ESRGAN/"   --add-binary="/usr/lib/libavcodec.so:./usr/lib/" --add-binary="/usr/lib/libavformat.so:./usr/lib/" --add-binary="/usr/lib/libavutil.so:./usr/lib/" --add-binary="/usr/lib/libswscale.so:./usr/lib/"  --add-binary="/usr/bin/ffmpeg:." --add-binary="/usr/bin/curl:." --add-binary="/usr/bin/python3:." --add-binary="/usr/lib/libswresample.so:./usr/lib/" --add-binary="/usr/lib/libavfilter.so:./usr/lib/" --add-binary="/usr/lib/libpostproc.so:./usr/lib/"  GUIPortable.py
