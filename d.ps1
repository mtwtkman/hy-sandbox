$cmd = $Args[0]
$opt = $Args[1]

function convert_win_path($cmd)
{
    $DOCKER_CONVERT_WINDOWS_PATHS = 1
    iex $cmd
}

switch ($cmd)
{
    "up" {convert_win_path "docker run -d -ti --rm --name hy -v ${PWD}:/source hy sh"}
    "hy" {convert_win_path "docker exec -ti hy hy --repl-output-fn=hy.contrib.hy-repr.hy-repr"}
    "run" {convert_win_path "docker exec -ti hy hy ${opt}"}
}