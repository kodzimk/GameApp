$PRESIGNED_URL = "https://download.llamameta.net/*?Policy=https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_1.17.5-stable.zip"
$MODEL_SIZE = "70B" #Read-Host -Prompt "Enter the list of models to download without spaces (7B,13B,70B,7B-chat,13B-chat,70B-chat), or press Enter for all"
$TARGET_FOLDER = "D:\Llama2"             # where all files should end up
if(!(Test-Path -Path $TARGET_FOLDER)){
    New-Item -ItemType directory -Path $TARGET_FOLDER
}

if ($MODEL_SIZE -eq "") {
    $MODEL_SIZE = "7B,13B,70B,7B-chat,13B-chat,70B-chat"
}

#Write-Host "Downloading LICENSE and Acceptable Usage Policy"
Invoke-WebRequest -Uri ($PRESIGNED_URL.Replace('*',"LICENSE")) -OutFile ($TARGET_FOLDER+"/LICENSE")
Invoke-WebRequest -Uri ($PRESIGNED_URL.Replace('*',"USE_POLICY.md")) -OutFile ($TARGET_FOLDER+"/USE_POLICY.md")

#Write-Host "Downloading tokenizer"
Invoke-WebRequest -Uri ($PRESIGNED_URL.Replace('*',"tokenizer.model")) -OutFile ($TARGET_FOLDER+"/tokenizer.model")

# Model sizes
$model_sizes = $MODEL_SIZE.Split(',')

foreach ($m in $model_sizes)
{
    if ($m -eq "7B") {
        $SHARD = 0
        $MODEL_PATH = "llama-2-7b"
    }
    elseif ($m -eq "7B-chat") {
        $SHARD = 0
        $MODEL_PATH = "llama-2-7b-chat"
    }
    elseif ($m -eq "13B") {
        $SHARD = 1
        $MODEL_PATH = "llama-2-13b"
    }
    elseif ($m -eq "13B-chat") {
        $SHARD = 1
        $MODEL_PATH = "llama-2-13b-chat"
    }
    elseif ($m -eq "70B") {
        $SHARD = 7
        $MODEL_PATH = "llama-2-70b"
    }
    elseif ($m -eq "70B-chat") {
        $SHARD = 7
        $MODEL_PATH = "llama-2-70b-chat"
    }

    Write-Host "Downloading $MODEL_PATH"
    $path = $TARGET_FOLDER+"/"+$MODEL_PATH
    if(!(Test-Path -Path $path)){
        New-Item -ItemType directory -Path $path
    }


    for ($s=0; $s -le $SHARD; $s++)
    {
        $fileName = "consolidated.{0:D2}.pth" -f $s
        Invoke-WebRequest -Uri ($PRESIGNED_URL.Replace('*',$MODEL_PATH+"/"+$fileName)) -OutFile ($path+"/"+$fileName)
    }
	
Invoke-WebRequest -Uri ($PRESIGNED_URL.Replace('*',$MODEL_PATH+"/params.json")) -OutFile ($path+"/params.json")


}