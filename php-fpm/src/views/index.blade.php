{{--{{$title}}--}}
{{--{{$host}}--}}
{{--{{$protocol}}--}}

<html lang="ja">
<head>
    <title>{{$title}}</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<h1>{{$title}}</h1>
<ul>
    <li>php version: {{$php_version}}</li>
    <li>IP: {{$ip}}</li>
    <li>{{$docker_on}}</li>
</ul>

<hr>
<ul>
    @for ($i = 0; $i < sizeof($links); $i++)
        <li><a target="_blank" href="{{$links[$i]['href']}}">{{$links[$i]['service_name']}}</a></li>
    @endfor
</ul>
</body>
</html>
