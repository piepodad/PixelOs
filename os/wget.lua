--Creeper9207 Code: wget substitute--
os.unloadAPI("/.wget/wgetAPI")
os.loadAPI("/.wget/wgetAPI")
run = 1
if fs.exists("/.wget/wgetAPI") then
else
  shell.run("mkdir /.wget")
  print("Installing wget alternative by Creeper9207...")
  sleep(1)
  shell.run("pastebin get T9X1D1He /wgetAPI")
  shell.run("pastebin get T9X1D1He /.wget/wgetAPI")
  shell.run("pastebin get h8H1wF3W /.wget/background")
  shell.run("pastebin get gjNxRVCa /.wget/gui1")
  run = 0
  wgetAPI.screenClear()
  print("wget alternative by Creeper9207 installed!")
  print("Run wget gui now? Y/n")
  print("")
  RunNow = io.read()
  if RunNow == "Y" then
    shell.run("wget gui")
  elseif RunNow == "y" then
    shell.run("wget gui")
  else
    clearIt()
  end
end
arg = { ... }
function decider() 
  if arg[1] == "download" then
    if arg[3] then
      wgetAPI.downloadFile(arg[2], arg[3])
    else
      print("requires more arguments!")
    end
  elseif arg[1] == "gui" then
    wgetAPI.openGUI()
  elseif arg[1] == "update" then
    shell.run("pastebin run NhqivYH6")
    wgetAPI.screenClear()
    print("updated")
  elseif arg[1] == "apihelp" then
    print("api name: 'wget'")
    print("functions:")
    print("silentDownload(string url, string filename)")
    print("download(string url, string filename")
    print("openGUI()")
    print("screenClear()")
    print("update()")
  else
    print("usage: wget <download/gui/update/apihelp> [url] [file name]")
  end
end
if run == 1 then
    decider()
end
