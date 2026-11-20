
# Hilfe

## Hier ein Überblick über die Hilfe von **KoboldCpp Server - Version 1.124.2**

```
koboldcpp.exe --help
usage: koboldcpp.exe [-h] [--usecuda [[main GPU ID] [[main GPU ID] ...]]] [--usevulkan [[Device IDs]
                     [[Device IDs] ...]]] [--usecpu] [--model [filenames] [[filenames] ...]]
                     [--config [filename]] [--contextsize [256 to 524288]] [--gpulayers [[GPU layers]]]
                     [--host [ipaddr]] [--launch] [--tensor_split [Ratios] [[Ratios] ...]]
                     [--threads [threads]] [--port [portnumber]] [--version] [--agent]
                     [--agentload [filename]] [--analyze [filename]] [--autofit]
                     [--autofitpadding [padding in MB]]
                     [--batchsize {-1,16,32,64,128,256,512,1024,2048,4096}]
                     [--ubatchsize {-1,16,32,64,128,256,512,1024,2048,4096}] [--benchmark [[filename]]]
                     [--blasthreads [threads]] [--chatcompletionsadapter [filename]] [--cli]
                     [--debugmode [DEBUGMODE]] [--defaultgenamt DEFAULTGENAMT] [--device <dev1,dev2,..>]
                     [--downloaddir [directory]] [--draftamount [tokens]] [--draftgpulayers [layers]]
                     [--draftgpusplit [Ratios] [[Ratios] ...]] [--draftmodel [filename]] [--enableguidance]
                     [--exportconfig [filename]] [--exporttemplate [filename]] [--failsafe] [--foreground]
                     [--gendefaults {"parameter":"value",...}] [--gendefaultsoverwrite]
                     [--genlimit [token limit]] [--highpriority] [--ignoremissing] [--jinja]
                     [--jinja_kwargs {"parameter":"value",...}] [--jinjatemplate [filename]]
                     [--jinjathink {default,true,false}] [--lora [lora_filename] [[lora_filename] ...]]
                     [--loramult [amount]] [--lowvram] [--maingpu [Device ID]]
                     [--maxrequestsize [size in MB]] [--mcpfile [mcp json file]] [--mmproj [filename]]
                     [--mmprojcpu] [--lazy-mode {auto,on,off}] [--moe-cache-mib MiB]
                     [--moecpu [[layers affected]]] [--ffncpu [[layers affected]]]
                     [--moeexperts [num of experts]] [--multiplayer] [--nocertify] [--nofastforward]
                     [--noflashattention] [--noavx2] [--nobostoken] [--nommq] [--nomodel] [--noshift]
                     [--noswa] [--onready [shell command]] [--allow-config-onready]
                     [--overridekv [name=type:value]] [--overridenativecontext [trained context]]
                     [--overridetensors [tensor name pattern=buffer type]] [--parallelrequests [slots]]
                     [--paralleltotalcontext [tokens]] [--password [API key]] [--preloadstory [savefile]]
                     [--prompt [prompt]] [--quantkv [quantization level f16/bf16/q8_0/q5_1/q4_0]]
                     [--queuelimit limit] [--quiet] [--ratelimit [seconds]]
                     [--reasoningeffort {default,none,low,medium,high,xhigh}] [--remotetunnel]
                     [--ropeconfig [rope-freq-scale] [[rope-freq-base] ...]] [--savedatafile [savefile]]
                     [--singleinstance] [--smartcache [limit]] [--smartcontext] [--splitmode [split mode]]
                     [--ssl [cert_pem] [[key_pem] ...]] [--swapadding SWAPADDING] [--unpack destination]
                     [--usemtp] [--usemlock] [--usemmap] [--usedirectio] [--visionmaxres [max px]]
                     [--visionmaxtokens [tokens]] [--visionmintokens [tokens]] [--websearch]
                     [--showgui | --skiplauncher] [--hordemodelname [name]] [--hordeworkername [name]]
                     [--hordekey [apikey]] [--hordemaxctx [amount]] [--hordegenlen [amount]]
                     [--sdaudiovae [filename]] [--sdclamped [[maxres]]] [--sdclampedsoft [maxres]]
                     [--sdclip1 [filename]] [--sdclip2 [filename]] [--sdclipdevice [Device ID]]
                     [--sdconvdirect {off,vaeonly,full}] [--sdflashattention] [--sdlora [filename]
                     [[filename] ...]] [--sdloramult [amounts] [[amounts] ...]] [--sdmaingpu [Device ID]]
                     [--sdmodel [filename]] [--sdoffloadcpu] [--sdphotomaker [filename]]
                     [--sdquant [[quantization level 0/1/2]]] [--sdllm [filename]] [--sdthreads [threads]]
                     [--sdtiledvae [maxres]] [--sdupscaler [filename]] [--sdvae [filename] | --sdvaeauto]
                     [--sdvaedevice [Device ID]] [--sdvramlimit [limit MB]] [--whispermodel [filename]]
                     [--ttsmodel [filename]] [--ttswavtokenizer [filename]] [--ttsgpu]
                     [--ttsmaxlen TTSMAXLEN] [--ttsthreads [threads]] [--ttsdir [directory]]
                     [--musicllm [filename]] [--musicembeddings [filename]] [--musicdiffusion [filename]]
                     [--musicvae [filename]] [--musiclowvram] [--embeddingsmodel [filename]]
                     [--embeddingsmaxctx [amount]] [--embeddingsgpu] [--rpcmode [disabled/connect/host]]
                     [--rpcport [portnumber]] [--rpchost [IP address]] [--rpcdevice <dev1,dev2,..>]
                     [--rpccache <directory>] [--rpctargets [remotehost1:port1,remotehost2:port2]]
                     [--admin] [--adminpassword [password]] [--admindir [directory]]
                     [--adminunloadtimeout ADMINUNLOADTIMEOUT] [--routermode] [--reqtimeout [seconds]]
                     [--autoswapmode] [--autoswapthreshold AUTOSWAPTHRESHOLD] [--baseconfig BASECONFIG]
                     [model_param] [port_param]

KoboldCpp Server - Version 1.124.2

positional arguments:
  model_param           Model file to load (positional)
  port_param            Port to listen on (positional)

optional arguments:
  -h, --help            show this help message and exit
  --usecuda [[main GPU ID] [[main GPU ID] ...]], --usecublas [[main GPU ID] [[main GPU ID] ...]], --usehipblas [[main GPU ID] [[main GPU ID] ...]]
                        Use CUDA for GPU Acceleration. Requires CUDA. Enter a number afterwards to select
                        and use 1 GPU. Leaving no number will use all GPUs.
  --usevulkan [[Device IDs] [[Device IDs] ...]]
                        Use Vulkan for GPU Acceleration. Can optionally specify one or more GPU Device ID
                        (e.g. --usevulkan 0), leave blank to autodetect.
  --usecpu              Do not use any GPU acceleration (CPU Only)
  --model [filenames] [[filenames] ...], -m [filenames] [[filenames] ...]
                        Model file to load. Accepts multiple values if they are URLs.
  --config [filename]   Load settings from a .kcpps file. Explicit command-line arguments override the file
  --contextsize [256 to 524288], --ctx-size [256 to 524288], -c [256 to 524288]
                        Controls the memory allocated for maximum context size, only change if you need
                        more RAM for big contexts. (default 16384).
  --gpulayers [[GPU layers]], --gpu-layers [[GPU layers]], --n-gpu-layers [[GPU layers]], -ngl [[GPU layers]]
                        Set number of layers to offload to GPU (when using GPU). Set to -1 to enable
                        autofit (default), set to 0 to disable GPU offload.
  --host [ipaddr]       Host IP to listen on. If this flag is not set, all routable interfaces are
                        accepted.
  --launch              Launches a web browser when load is completed.
  --tensor_split [Ratios] [[Ratios] ...], --tensorsplit [Ratios] [[Ratios] ...], --tensor-split [Ratios] [[Ratios] ...], -ts [Ratios] [[Ratios] ...]
                        For CUDA and Vulkan only, ratio to split tensors across multiple GPUs, space-
                        separated list of proportions, e.g. 7 3
  --threads [threads], -t [threads]
                        Use a custom number of threads if specified. Otherwise, uses an amount based on CPU
                        cores
  --port [portnumber]   Port to listen on. (Defaults to 5001)
  --version             Prints version and exits.

Advanced Commands:
  --agent               Launches the simple KoboldCpp Agent in a new terminal window, or the current
                        terminal with --cli.
  --agentload [filename]
                        Load a KoboldCpp Agent JSON save file when launching the agent.
  --analyze [filename]  Reads the metadata, weight types and tensor names in any GGUF or safetensors file.
  --autofit, --fit, -fit
                        Forces autofit, which attempts to fit the model in the best possible way. Overrides
                        everything else.
  --autofitpadding [padding in MB]
                        How much spare allowance in MB should autofit reserve? If it's too little, the load
                        might fail.
  --batchsize {-1,16,32,64,128,256,512,1024,2048,4096}, --blasbatchsize {-1,16,32,64,128,256,512,1024,2048,4096}, --batch-size {-1,16,32,64,128,256,512,1024,2048,4096}, -b {-1,16,32,64,128,256,512,1024,2048,4096}
                        Sets the logical batch size used in batched processing (default 512). Setting it to
                        -1 disables batched mode, but keeps other benefits like GPU offload.
  --ubatchsize {-1,16,32,64,128,256,512,1024,2048,4096}, --ubatch-size {-1,16,32,64,128,256,512,1024,2048,4096}, -ub {-1,16,32,64,128,256,512,1024,2048,4096}
                        Sets the physical batch size used in batched processing. Setting it to -1 uses the
                        same value as batchsize (default).
  --benchmark [[filename]]
                        Do not start server, instead run benchmarks. If filename is provided, appends
                        results to provided file.
  --blasthreads [threads], --batchthreads [threads], --threadsbatch [threads], --threads-batch [threads]
                        Use a different number of threads during batching if specified. Otherwise, has the
                        same value as --threads
  --chatcompletionsadapter [filename]
                        Select an optional ChatCompletions Adapter JSON file to force custom instruct tags.
  --cli                 Runs interactive terminal chat without an HTTP server. With --agent, runs the agent
                        in this terminal using a loopback HTTP server.
  --debugmode [DEBUGMODE]
                        Shows additional debug info in the terminal. Levels: -1 (Horde-quiet, suppresses
                        non-essential prints; auto-applied when Horde args are set), 0 (default, normal
                        output), 1 (verbose: extra slot/cache info, larger print buffers, retains horde-
                        debug prefix). Passing the flag without a value implies 1.
  --defaultgenamt DEFAULTGENAMT
                        How many tokens to generate by default, if not specified. Must be smaller than
                        context size. Usually, your frontend GUI will override this.
  --device <dev1,dev2,..>, -dev <dev1,dev2,..>
                        Set llama.cpp compatible device selection override. Comma separated. Overrides
                        normal device choices.
  --downloaddir [directory]
                        Specify a directory that models will be downloaded to or searched from, if unset
                        uses the working directory.
  --draftamount [tokens], --draft-max [tokens], --draft-n [tokens], --spec-draft-n-max [tokens]
                        How many tokens to draft per chunk before verifying results
  --draftgpulayers [layers], --gpu-layers-draft [layers], --n-gpu-layers-draft [layers], -ngld [layers]
                        How many layers to offload to GPU for the draft model (default=full offload)
  --draftgpusplit [Ratios] [[Ratios] ...]
                        GPU layer distribution ratio for draft model (default=same as main). Only works if
                        multi-GPUs selected for MAIN model and tensor_split is set!
  --draftmodel [filename], --model-draft [filename], -md [filename]
                        Load a small draft model for speculative decoding. It will be fully offloaded.
                        Vocab must match the main model.
  --enableguidance      Enables the use of Classifier-Free-Guidance, which allows the use of negative
                        prompts. Has performance and memory impact.
  --exportconfig [filename]
                        Exports the current selected arguments as a .kcpps settings file
  --exporttemplate [filename]
                        Exports the current selected arguments as a .kcppt template file
  --failsafe            Use failsafe mode, extremely old CPU compatibility mode that should work on all
                        devices.
  --foreground          Windows only. Sends the terminal to the foreground every time a new prompt is
                        generated. This helps avoid some idle slowdown issues.
  --gendefaults {"parameter":"value",...}
                        Sets extra default parameters for some fields in API requests, as a JSON string.
  --gendefaultsoverwrite
                        Allow the gendefaults parameters to overwrite the original value in API payloads.
  --genlimit [token limit], --promptlimit [token limit]
                        Sets the maximum number of generated tokens, it will restrict all generations to
                        this or lower. Also usable with --prompt or --benchmark. If you're looking to
                        increase the default token limit, use --defaultgenamt instead.
  --highpriority        Experimental flag. If set, increases the process CPU priority, potentially speeding
                        up generation. Use caution.
  --ignoremissing       Ignores all missing non-essential files, just skipping them instead.
  --jinja, --jinja_tools, --jinja-tools, --jinjatools
                        Enables Jinja chat template formatting, including tool calls. Falls back to
                        universal formatting if Jinja fails.
  --jinja_kwargs {"parameter":"value",...}, --jinja-kwargs {"parameter":"value",...}, --jinjakwargs {"parameter":"value",...}, --chat-template-kwargs {"parameter":"value",...}
                        Set additional fields for Jinja JSON template parser, must be a valid JSON object.
  --jinjatemplate [filename], --chat-template-file [filename]
                        Select a custom Jinja chat template, will overwrite model jinja chat template
  --jinjathink {default,true,false}
                        A quick way to enable or disable thinking in the jinja template.
  --lora [lora_filename] [[lora_filename] ...]
                        GGUF models only, applies a lora file on top of model.
  --loramult [amount]   Multiplier for the Text LORA model to be applied.
  --lowvram, -nkvo, --no-kv-offload
                        If supported by the backend, do not offload KV to GPU (lowvram mode). Not
                        recommended, will be slow.
  --maingpu [Device ID], --main-gpu [Device ID], -mg [Device ID]
                        Only used in a multi-gpu setup. Sets the index of the main GPU that will be used.
  --maxrequestsize [size in MB]
                        Specify a max request payload size. Any requests to the server larger than this
                        size will be dropped. Do not change if unsure.
  --mcpfile [mcp json file]
                        Specify path to mcp.json which contains the Cladue Desktop compatible MCP server
                        config.
  --mmproj [filename]   Select a multimodal projector file for vision models.
  --mmprojcpu, --no-mmproj-offload
                        Force CLIP for Vision mmproj always on CPU.
  --lazy-mode {auto,on,off}, --lazymode {auto,on,off}
                        On-demand reading of architecture-marked tensors such as Qwen PLE embeddings: auto
                        for tensors larger than 4 GiB, on to force lazy reading, off to keep them resident
                        (default=auto).
  --moe-cache-mib MiB, --moecache MiB
                        Experimental GPU cache size in MiB for CPU-resident MoE experts. Split among GPUs
                        like layers. Uses additional VRAM; combine with --moecpu or --autofit (default=0,
                        disabled).
  --moecpu [[layers affected]], --n-cpu-moe [[layers affected]], -ncmoe [[layers affected]]
                        Keep the Mixture of Experts (MoE) weights of the first N layers in the CPU. If no
                        value is provided, applies to all layers.
  --ffncpu [[layers affected]], --n-cpu-ffn [[layers affected]], -ncffn [[layers affected]]
                        Keep the dense FFN weights of the first N layers in the CPU. If no value is
                        provided, applies to all layers.
  --moeexperts [num of experts]
                        How many experts to use for MoE models (default=follow gguf)
  --multiplayer         Hosts a shared multiplayer session that others can join.
  --nocertify           Allows insecure SSL connections. Use this if you have cert errors and need to
                        bypass certificate restrictions.
  --nofastforward       If set, do not attempt to fast forward GGUF context (always reprocess). Will also
                        enable noshift
  --noflashattention, --no-flash-attn, -nofa
                        Disables flash attention.
  --noavx2              Do not use AVX2 instructions, a slower compatibility mode for older devices.
  --nobostoken          Prevents BOS token from being added at the start of any prompt. Usually NOT
                        recommended for most models.
  --nommq               Disables MMQ, only used for cuda backend. This flag may be removed in future.
  --nomodel             Allows you to launch the GUI alone, without selecting any model.
  --noshift, --no-context-shift
                        If set, do not attempt to Trim and Shift the GGUF context.
  --noswa, --swa-full   If set, uses full-size SWA KV Cache. Otherwise, SWA will be enabled automatically
                        on models that support it. SWA saves memory but cannot be used with context
                        shifting.
  --onready [shell command]
                        An optional shell command to execute after the model has been loaded.
  --allow-config-onready
                        Allow .kcpps config files loaded after launch to set --onready commands. Only use
                        with trusted configs.
  --overridekv [name=type:value], --override-kv [name=type:value]
                        Override metadata value by key. Separate multiple values with commas. Format is
                        name=type:value. Types: int, float, bool, str
  --overridenativecontext [trained context]
                        Overrides the native trained context of the loaded model with a custom value to be
                        used for Rope scaling.
  --overridetensors [tensor name pattern=buffer type], --override-tensor [tensor name pattern=buffer type], -ot [tensor name pattern=buffer type]
                        Override selected backend for specific tensors matching
                        tensor_name_regex_pattern=buffer_type, same as in llama.cpp.
  --parallelrequests [slots], --continuous-batching [slots], --contbatch [slots]
                        Allows multiple text and multimodal generation requests to be processed in parallel
                        (Experimental).
  --paralleltotalcontext [tokens], --parallel-total-context [tokens]
                        Sets the total shared KV cache size in tokens for parallel requests. Defaults to
                        --contextsize when unset; lower values are raised to --contextsize.
  --password [API key]  Enter a password required to use this instance. This key will be required for all
                        text endpoints. Image endpoints are not secured. Can also be set with env var
                        KCPP_PASSWORD
  --preloadstory [savefile]
                        Configures a prepared story json save file to be hosted on the server, which
                        frontends (such as KoboldAI Lite) can access over the API.
  --prompt [prompt], -p [prompt]
                        Passing a prompt string triggers a direct inference, loading the model, outputs the
                        response to stdout and exits. Can be used alone or with benchmark.
  --quantkv [quantization level f16/bf16/q8_0/q5_1/q4_0]
                        Sets the KV cache data type quantization, options are f16/bf16/q8_0/q5_1/q4_0.
                        Requires Flash Attention for full effect, otherwise only K cache is quantized.
  --queuelimit limit    Set maximum number of queued incoming requests allowed.
  --quiet               Enable quiet mode, which hides generation inputs and outputs in the terminal. Quiet
                        mode is automatically enabled when running a horde worker.
  --ratelimit [seconds]
                        If enabled, rate limit generative request by IP address. Each IP can only send a
                        new request once per X seconds.
  --reasoningeffort {default,none,low,medium,high,xhigh}
                        A quick way to set the default reasoning effort. API values override this.
  --remotetunnel        Uses Cloudflare to create a remote tunnel, allowing you to access koboldcpp
                        remotely over the internet even behind a firewall.
  --ropeconfig [rope-freq-scale] [[rope-freq-base] ...]
                        If set, uses customized RoPE scaling from configured frequency scale and frequency
                        base (e.g. --ropeconfig 0.25 10000). Otherwise, uses NTK-Aware scaling set
                        automatically based on context size. For linear rope, simply set the freq-scale and
                        ignore the freq-base
  --savedatafile [savefile]
                        If enabled, creates or opens a persistent database file on the server, that allows
                        users to save and load their data remotely. A new file is created if it does not
                        exist.
  --singleinstance      Allows this KoboldCpp instance to be shut down by any new instance requesting the
                        same port, preventing duplicate servers from clashing on a port.
  --smartcache [limit]  Enables intelligent context switching by saving KV cache snapshots to RAM. Requires
                        fast forwarding.
  --smartcontext        Reserving a portion of context to try processing less frequently. Outdated. Not
                        recommended.
  --splitmode [split mode], -sm [split mode], --split-mode [split mode]
                        How to split the model across multiple GPUs
  --ssl [cert_pem] [[key_pem] ...]
                        Allows all content to be served over SSL instead. A valid UNENCRYPTED SSL cert and
                        key .pem files must be provided
  --swapadding SWAPADDING
                        How much extra to pad the SWA KV cache, this affects the rewind limit before
                        reprocessing is forced.
  --unpack destination  Extracts the file contents of the KoboldCpp binary into a target directory.
  --usemtp              Enables MTP layers to be used for drafting (speculative decoding) if present
  --usemlock, --mlock   Enables mlock, preventing the RAM used to load the model from being paged out. Not
                        usually recommended.
  --usemmap             If set, uses mmap to load model.
  --usedirectio, --directio, --direct-io, -dio
                        Use direct I/O to load GGUF models if available. May improve cold-load times on
                        some storage.
  --visionmaxres [max px]
                        Clamp MMProj vision maximum allowed resolution. Allowed values are between 512 to
                        2048 px (default 1024).
  --visionmaxtokens [tokens], --image-max-tokens [tokens]
                        Override the maximum tokens for the MMProj embedding (default -1).
  --visionmintokens [tokens], --image-min-tokens [tokens]
                        Override the minimum tokens for the MMProj embedding (default -1).
  --websearch           Enable the local search engine proxy so Web Searches can be done.
  --showgui             Always show the GUI instead of launching the model right away when loading settings
                        from a .kcpps file.
  --skiplauncher        Doesn't display or use the GUI launcher. Overrides showgui.

Horde Worker Commands:
  --hordemodelname [name]
                        Sets your AI Horde display model name.
  --hordeworkername [name]
                        Sets your AI Horde worker name.
  --hordekey [apikey]   Sets your AI Horde API key.
  --hordemaxctx [amount]
                        Sets the maximum context length your worker will accept from an AI Horde job. If 0,
                        matches main context limit.
  --hordegenlen [amount]
                        Sets the maximum number of tokens your worker will generate from an AI horde job.

Image Generation Commands:
  --sdaudiovae [filename]
                        Specify an image generation audio VAE for LTX2.3 video generation.
  --sdclamped [[maxres]]
                        If specified, limit generation steps and image size for shared use. Accepts an
                        extra optional parameter that indicates maximum resolution (eg. 768 clamps to
                        768x768, min 512px, disabled if 0).
  --sdclampedsoft [maxres]
                        If specified, limit max image size to curb memory usage. Similar to --sdclamped,
                        but less strict, allows trade-offs between width and height (e.g. 640 would allow
                        640x640, 512x768 and 768x512 images).
  --sdclip1 [filename], --sdclipl [filename]
                        Specify first safetensors Clip model. Leave blank if prebaked or unused.
  --sdclip2 [filename], --sdclipg [filename]
                        Specify second safetensors Clip model. Leave blank if prebaked or unused. Put
                        tokenizer here if required.
  --sdclipdevice [Device ID]
                        CLIP / T5 / LLM device for image generation. GPU index, -1 or 'main' for the main
                        GPU, or 'CPU' (default: CPU).
  --sdconvdirect {off,vaeonly,full}
                        Enables Conv2D Direct. May improve performance or reduce memory usage. Might crash
                        if not supported by the backend. Can be 'off' (default) to disable, 'full' to turn
                        it on for all operations, or 'vaeonly' to enable only for the VAE.
  --sdflashattention    Enables Flash Attention for image generation.
  --sdlora [filename] [[filename] ...]
                        Specify image generation LoRAs safetensors models to be applied. Multiple LoRAs are
                        accepted.
  --sdloramult [amounts] [[amounts] ...]
                        Multipliers for the image LoRA model to be applied.
  --sdmaingpu [Device ID]
                        If specified, Image Generation weights will be placed on the selected GPU index.
                        GPU index, -1 or 'main' for the main GPU, or 'CPU' (default: 'main')
  --sdmodel [filename]  Specify an image generation safetensors or gguf model to enable image generation.
  --sdoffloadcpu        Offload image weights in RAM to save VRAM, swap into VRAM when needed.
  --sdphotomaker [filename]
                        PhotoMaker is a model that allows face cloning. Specify a PhotoMaker safetensors
                        model which will be applied replacing img2img. SDXL models only. Leave blank if
                        unused.
  --sdquant [[quantization level 0/1/2]]
                        If specified, loads the model quantized to save memory. 0=off, 1=q8, 2=q4
  --sdllm [filename]    Specify an image generation text encoder or LLM (.safetensors or .gguf). Leave
                        blank if prebaked or unused.
  --sdthreads [threads]
                        Use a different number of threads for image generation if specified. Otherwise, has
                        the same value as --threads.
  --sdtiledvae [maxres]
                        Adjust the automatic VAE tiling trigger for images above this size. 0 disables vae
                        tiling.
  --sdupscaler [filename]
                        You can use ESRGAN as an upscaling model to resize images. Leave blank if unused.
  --sdvae [filename]    Specify an image generation safetensors VAE which replaces the one in the model.
  --sdvaeauto           Uses a built-in tiny VAE via TAE SD, which is very fast, and fixed bad VAEs.
  --sdvaedevice [Device ID]
                        VAE device for image generation. GPU index, -1 or 'main' for the main GPU, or 'CPU'
                        (default: main).
  --sdvramlimit [limit MB]
                        If set, prevent VRAM usage from image gen from using more than this many MB.

Whisper Transcription Commands:
  --whispermodel [filename]
                        Specify a Whisper .bin for speech-to-text or SheetSage2 .gguf for music-to-ABC
                        transcription.

TTS Narration Commands:
  --ttsmodel [filename]
                        Specify the TTS Text-To-Speech GGUF model.
  --ttswavtokenizer [filename]
                        Specify the WavTokenizer GGUF model.
  --ttsgpu              Use the GPU for TTS.
  --ttsmaxlen TTSMAXLEN
                        Limit number of audio tokens generated with TTS.
  --ttsthreads [threads]
                        Use a different number of threads for TTS if specified. Otherwise, has the same
                        value as --threads.
  --ttsdir [directory]  Select directory containing voices for voice cloning.

Music Gen Commands:
  --musicllm [filename]
                        Select music LLM model (e.g. ACE-Step LM or yue2-3b-q8_0.gguf)
  --musicembeddings [filename]
                        Select music embedding model (e.g Qwen3-Embedding-0.6B)
  --musicdiffusion [filename]
                        Select music diffusion (DiT) model (e.g acestep-v15-turbo)
  --musicvae [filename]
                        Select music VAE model (e.g. yue2-vae-f16.gguf)
  --musiclowvram        Unload music models when not in use

Embeddings Model Commands:
  --embeddingsmodel [filename]
                        Specify an embeddings model to be loaded for generating embedding vectors.
  --embeddingsmaxctx [amount]
                        Overrides the default maximum supported context of an embeddings model (defaults to
                        trained context).
  --embeddingsgpu       Attempts to offload layers of the embeddings model to GPU. Usually not needed.

RPC Commands:
  --rpcmode [disabled/connect/host]
                        RPC allows GPUs to be shared over the network. connect=access a remote GPU,
                        host=share your GPU
  --rpcport [portnumber]
                        RPC host mode only. Port for RPC server to listen on (default: 5551).
  --rpchost [IP address]
                        RPC host mode only. IP address for RPC server to listen on. Use 0.0.0.0 for all
                        interfaces, 127.0.0.1 for localhost only.
  --rpcdevice <dev1,dev2,..>
                        RPC host mode only. Set specific devices to use for RPC server. Comma separated.
                        Overrides normal RPC device choices.
  --rpccache <directory>
                        RPC host mode only. Cache large weight tensors received from clients in the
                        explicitly provided directory, so reloading the same model skips sending them over
                        the network. Cache files are never deleted, and any connected client can write to
                        the cache, so only use with trusted clients.
  --rpctargets [remotehost1:port1,remotehost2:port2]
                        RPC connect mode only. Specify a comma separated list of remote RPC endpoints to
                        connect to e.g. 127.0.0.1:5551,127.0.0.1:5552

Administration Commands:
  --admin               Enables admin mode, allowing you to unload and reload different configurations or
                        models.
  --adminpassword [password]
                        Require a password to access admin functions. You are strongly advised to use one
                        for publically accessible instances! Can also be set with env var
                        KCPP_ADMINPASSWORD
  --admindir [directory]
                        Specify a directory to look for .kcpps configs in, which can be used to swap
                        models.
  --adminunloadtimeout ADMINUNLOADTIMEOUT
                        Set an idle timeout in seconds after which KoboldCpp will automatically unload the
                        current model.
  --routermode          Router mode uses a reverse proxy router, allowing you to easily hotswap models and
                        configs within a single request. Requires admin mode.
  --reqtimeout [seconds]
                        Timeout in seconds for HTTP requests. Use 0 for the default timeout.
  --autoswapmode        Autoswap mode builds on router mode to allow switching of model types within the
                        same config automatically. Requires admin mode and router mode. All models desired
                        must be defined within the same config.
  --autoswapthreshold AUTOSWAPTHRESHOLD
                        Keep model families at or below this combined file size resident in autoswap mode,
                        in MB (default 256). Only one model family above the threshold is loaded at a time.
  --baseconfig BASECONFIG
                        Specify a base .kcpps config to apply, if no custom base config is selected during
                        a model swap
```
