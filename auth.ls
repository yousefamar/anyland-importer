require! [ request, steam ]
/*
steam-client = new steam.SteamClient!
steam-user = new steam.SteamUser steam-client
steam-client.connect!
<-! steam-client.on \connected

steam-user.log-on do
  account_name: \pnite
  password: ''

<-! steam-client.on \logOnResponse

console.log arguments
console.log steam-client.steam-ID
console.log steam-client.session-ID
*/

err, res, body <-! request.post do
  url: 'http://app.anyland.com/auth/start'
  headers:
    'Host': 'app.anyland.com'
    'User-Agent': 'UnityPlayer/5.4.1f1 (http://unity3d.com)'
    'Accept': '/*'
    'Accept-Encoding': 'identity'
    'Content-Length': '472'
    'Content-Type': 'application/x-www-form-urlencoded'
    'X-Unity-Version': '5.4.1f'
  form:
    ast: \1400000095322B5C53FB25A1E8AE0908010010019396405818000000010000000200000024F2ABC300000000817C330003000000B20000003200000004000000E8AE09080100100164B7070024F2ABC36801A8C00000000061DE3D58E18D5958010056C701000000000015DBDCE466C78DA517E9642F11870EAC717CBEF627A09355D4A0C3BA699F471FB9149C867A099B778578529C30D2B79C746F6A60E2683D39CE9D51F5831ACD231AF0AB7C04E55D73A7FFDEB24C013C0B71CA57E1A91EDBDD0F3CEABF5509138A575BE85D68530148687AC96BB71A36DD34C36CFF0AA25CA0251A070E0AEABE82

console.log body
