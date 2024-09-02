proc tryExecute(s: string) =
  discard

proc byebye() {.noconv.} =
  echo "\nBye!"
  quit(0)

proc main =
  setControlCHook(byebye)
  while true:
    let l = readLine(stdin)
    tryExecute(l)

when isMainModule:
  main()
