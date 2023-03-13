create database projet_perso;

create table chapitre(
    id integer unique not null,
    text blob (65535),
    primary key(id)
) ;

create table lecteur(
    email Varchar(50),
    pseudo varchar(50),
    mdp varchar(50),
    primary key(email)
);

create table parcours (
    id integer unique not null,
    email Varchar(50),
    ordre Varchar(10),
    primary key (id, email),
    FOREIGN key (id) references chapitre(id),
    FOREIGN key (email) references lecteur(email)

);

Insert into chapitre(id ,text) Values 
(
    1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Lectus mauris ultrices eros in cursus. Velit euismod in pellentesque massa. Ut porttitor leo a diam sollicitudin tempor id. Tellus id interdum velit laoreet. Vulputate sapien nec sagittis aliquam malesuada. Consectetur purus ut faucibus pulvinar. Sed blandit libero volutpat sed cras ornare arcu dui. Nisl tincidunt eget nullam non nisi est sit. Adipiscing vitae proin sagittis nisl. Metus vulputate eu scelerisque felis. Consectetur adipiscing elit duis tristique. Vulputate dignissim suspendisse in est. Ut porttitor leo a diam sollicitudin tempor id. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Mi proin sed libero enim sed faucibus turpis.

Eget duis at tellus at urna condimentum mattis pellentesque. Congue mauris rhoncus aenean vel elit. Urna neque viverra justo nec ultrices dui sapien eget mi. Eu consequat ac felis donec et odio pellentesque diam. Commodo viverra maecenas accumsan lacus vel facilisis. Donec et odio pellentesque diam volutpat commodo sed. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Massa placerat duis ultricies lacus sed turpis tincidunt. Iaculis eu non diam phasellus vestibulum. Tellus id interdum velit laoreet id. Massa eget egestas purus viverra accumsan in nisl nisi. Felis imperdiet proin fermentum leo vel orci. Neque laoreet suspendisse interdum consectetur libero id.

Nisl tincidunt eget nullam non nisi est sit. Id eu nisl nunc mi ipsum faucibus. Placerat orci nulla pellentesque dignissim enim sit. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Arcu odio ut sem nulla pharetra diam sit amet nisl. Enim lobortis scelerisque fermentum dui. Eros donec ac odio tempor. Varius sit amet mattis vulputate enim. Quis auctor elit sed vulputate. Diam sollicitudin tempor id eu nisl nunc mi ipsum. Neque vitae tempus quam pellentesque. Id neque aliquam vestibulum morbi blandit cursus risus at ultrices. Integer eget aliquet nibh praesent tristique magna sit amet purus. Egestas sed sed risus pretium. Eget sit amet tellus cras adipiscing enim eu turpis. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Consectetur a erat nam at lectus urna duis convallis.

Integer vitae justo eget magna fermentum. Egestas dui id ornare arcu odio ut sem nulla pharetra. Cras fermentum odio eu feugiat pretium nibh. Gravida rutrum quisque non tellus orci ac auctor augue. A diam maecenas sed enim. Ut sem nulla pharetra diam sit amet nisl suscipit. Faucibus scelerisque eleifend donec pretium. Mauris sit amet massa vitae tortor condimentum lacinia. Amet nulla facilisi morbi tempus iaculis urna id volutpat. Nibh tellus molestie nunc non blandit. Est ultricies integer quis auctor elit sed vulputate. Facilisis sed odio morbi quis commodo. In hendrerit gravida rutrum quisque. Mauris nunc congue nisi vitae suscipit tellus mauris a diam.'
),
(
    2, '2   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Proin sagittis nisl rhoncus mattis rhoncus urna neque. Nec ullamcorper sit amet risus nullam eget. Sapien eget mi proin sed libero. Facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui. Erat pellentesque adipiscing commodo elit at imperdiet dui. Id consectetur purus ut faucibus pulvinar elementum integer. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Mattis enim ut tellus elementum sagittis vitae. Sit amet tellus cras adipiscing enim eu turpis.

Viverra nibh cras pulvinar mattis nunc sed blandit libero. Bibendum at varius vel pharetra. Eget arcu dictum varius duis at consectetur lorem donec. Sit amet dictum sit amet. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Mauris nunc congue nisi vitae suscipit tellus mauris. Cursus eget nunc scelerisque viverra mauris in aliquam sem. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Nulla pellentesque dignissim enim sit amet venenatis urna. Porttitor rhoncus dolor purus non enim. Orci eu lobortis elementum nibh tellus molestie nunc non. Dui nunc mattis enim ut tellus. Neque egestas congue quisque egestas diam in arcu cursus. Quam quisque id diam vel quam elementum pulvinar. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus.

Est ante in nibh mauris cursus. Lacus suspendisse faucibus interdum posuere lorem. At erat pellentesque adipiscing commodo elit. Consequat ac felis donec et odio pellentesque. Adipiscing tristique risus nec feugiat in. Est ultricies integer quis auctor elit sed vulputate mi sit. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Urna et pharetra pharetra massa massa. Vitae tortor condimentum lacinia quis vel eros. Tristique nulla aliquet enim tortor.

Ut enim blandit volutpat maecenas. Eget dolor morbi non arcu risus quis varius. Sit amet dictum sit amet justo donec enim diam vulputate. Nisl nunc mi ipsum faucibus vitae aliquet nec. Amet commodo nulla facilisi nullam vehicula ipsum a. Sollicitudin ac orci phasellus egestas. Quis imperdiet massa tincidunt nunc pulvinar sapien et. Id leo in vitae turpis massa sed elementum. Amet massa vitae tortor condimentum. Mi bibendum neque egestas congue quisque egestas. Amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Justo laoreet sit amet cursus sit. Gravida quis blandit turpis cursus in hac habitasse platea. Viverra nam libero justo laoreet sit amet. Vitae aliquet nec ullamcorper sit amet risus. Arcu dictum varius duis at consectetur lorem. Neque aliquam vestibulum morbi blandit. Sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus. Aliquam ut porttitor leo a diam sollicitudin tempor id. Posuere morbi leo urna molestie.

Ornare arcu odio ut sem nulla pharetra diam. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Egestas dui id ornare arcu odio. Posuere urna nec tincidunt praesent semper. Sodales ut etiam sit amet nisl purus in. Purus in massa tempor nec. Diam maecenas sed enim ut sem viverra aliquet. Euismod quis viverra nibh cras. Felis imperdiet proin fermentum leo vel orci. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Ante in nibh mauris cursus mattis molestie a iaculis at. Adipiscing tristique risus nec feugiat in fermentum posuere urna nec. Eget velit aliquet sagittis id. Aenean euismod elementum nisi quis eleifend quam adipiscing. Placerat vestibulum lectus mauris ultrices eros in cursus turpis. Habitant morbi tristique senectus et.

Ipsum a arcu cursus vitae congue mauris rhoncus aenean. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique senectus. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Venenatis cras sed felis eget velit aliquet. Enim diam vulputate ut pharetra sit amet. Euismod elementum nisi quis eleifend quam adipiscing vitae. Sodales ut etiam sit amet nisl purus. Nec tincidunt praesent semper feugiat nibh. Eu ultrices vitae auctor eu. Vel turpis nunc eget lorem dolor sed viverra. Cursus in hac habitasse platea dictumst quisque sagittis purus sit. Pulvinar mattis nunc sed blandit libero volutpat.

Mi bibendum neque egestas congue quisque egestas diam. Est ante in nibh mauris cursus mattis. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Risus quis varius quam quisque id diam vel. Lacus sed viverra tellus in hac. Aliquam vestibulum morbi blandit cursus risus. Bibendum at varius vel pharetra vel turpis nunc. Tincidunt vitae semper quis lectus nulla at. Faucibus nisl tincidunt eget nullam non nisi est sit. Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus quam. Libero enim sed faucibus turpis in. Gravida in fermentum et sollicitudin ac orci. In mollis nunc sed id semper risus in hendrerit. Sagittis vitae et leo duis ut diam. Neque gravida in fermentum et sollicitudin. Fermentum iaculis eu non diam phasellus vestibulum lorem. Vehicula ipsum a arcu cursus. Lectus nulla at volutpat diam.

In hac habitasse platea dictumst. Consectetur adipiscing elit duis tristique sollicitudin nibh. Suspendisse faucibus interdum posuere lorem ipsum dolor. Odio ut enim blandit volutpat maecenas volutpat. Mattis pellentesque id nibh tortor id. Eget nulla facilisi etiam dignissim diam quis enim. Est lorem ipsum dolor sit amet consectetur adipiscing elit. Lacinia at quis risus sed. Maecenas ultricies mi eget mauris pharetra et. Et pharetra pharetra massa massa ultricies mi quis hendrerit dolor. Etiam erat velit scelerisque in. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. Vestibulum lectus mauris ultrices eros in cursus turpis massa. Bibendum at varius vel pharetra vel turpis nunc eget. Nec nam aliquam sem et tortor consequat id porta.

Fames ac turpis egestas maecenas pharetra convallis. Lorem mollis aliquam ut porttitor leo a diam. Amet consectetur adipiscing elit duis. Eget mauris pharetra et ultrices neque ornare aenean. Ut venenatis tellus in metus vulputate. Proin sagittis nisl rhoncus mattis rhoncus urna neque. Vitae sapien pellentesque habitant morbi tristique senectus et. Odio aenean sed adipiscing diam. Molestie nunc non blandit massa enim nec. Vitae semper quis lectus nulla at volutpat. Ac odio tempor orci dapibus ultrices in iaculis nunc sed. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Auctor urna nunc id cursus metus. Quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Ultrices sagittis orci a scelerisque purus semper. Scelerisque fermentum dui faucibus in ornare quam viverra. Amet nisl purus in mollis nunc sed id semper. Pellentesque id nibh tortor id aliquet lectus proin.'
),
(
    3,'3  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At imperdiet dui accumsan sit. Rhoncus aenean vel elit scelerisque mauris pellentesque. Euismod in pellentesque massa placerat. At imperdiet dui accumsan sit amet nulla facilisi morbi tempus. Vitae suscipit tellus mauris a diam. Nunc pulvinar sapien et ligula ullamcorper malesuada. Nulla porttitor massa id neque. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus. At volutpat diam ut venenatis tellus. Tellus mauris a diam maecenas sed enim ut sem. Mi bibendum neque egestas congue quisque egestas diam. Diam maecenas sed enim ut sem. Orci phasellus egestas tellus rutrum. In hac habitasse platea dictumst. Lacinia quis vel eros donec.

Cras tincidunt lobortis feugiat vivamus at augue eget arcu. A diam maecenas sed enim. Faucibus in ornare quam viverra orci sagittis. Quis varius quam quisque id diam vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Felis bibendum ut tristique et egestas. Dui vivamus arcu felis bibendum ut tristique. Facilisis gravida neque convallis a cras semper auctor neque. Vel risus commodo viverra maecenas accumsan lacus. Eu scelerisque felis imperdiet proin fermentum. Sed vulputate odio ut enim. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Venenatis lectus magna fringilla urna porttitor rhoncus. Nullam non nisi est sit amet facilisis. Mus mauris vitae ultricies leo integer malesuada nunc vel. Condimentum vitae sapien pellentesque habitant morbi tristique senectus et netus. Amet facilisis magna etiam tempor orci eu. Proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus.

Facilisis magna etiam tempor orci eu. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Tristique senectus et netus et malesuada fames. Suspendisse interdum consectetur libero id. Nulla porttitor massa id neque aliquam vestibulum. Ut eu sem integer vitae justo eget magna fermentum. Erat velit scelerisque in dictum non consectetur a. Morbi leo urna molestie at elementum eu. Quis hendrerit dolor magna eget est lorem. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Ut enim blandit volutpat maecenas volutpat.

Arcu dictum varius duis at consectetur. Justo laoreet sit amet cursus sit amet dictum. Molestie ac feugiat sed lectus. Nunc sed velit dignissim sodales. Arcu dui vivamus arcu felis bibendum. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Feugiat in fermentum posuere urna. Ac tortor vitae purus faucibus ornare. Diam sit amet nisl suscipit. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Lectus proin nibh nisl condimentum id venenatis a condimentum. Dolor sed viverra ipsum nunc. In vitae turpis massa sed elementum. Nec ullamcorper sit amet risus.

Enim neque volutpat ac tincidunt vitae semper quis. Lorem ipsum dolor sit amet consectetur adipiscing. Curabitur vitae nunc sed velit. Nisl pretium fusce id velit ut. Nibh ipsum consequat nisl vel pretium. Duis convallis convallis tellus id interdum velit. Erat velit scelerisque in dictum non consectetur a. Bibendum enim facilisis gravida neque. Fringilla urna porttitor rhoncus dolor purus. Ut etiam sit amet nisl purus in mollis nunc sed. Dictumst quisque sagittis purus sit amet volutpat consequat. Diam maecenas sed enim ut sem viverra aliquet eget sit. Sagittis aliquam malesuada bibendum arcu. Non blandit massa enim nec dui nunc. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Massa sapien faucibus et molestie.

Ut tortor pretium viverra suspendisse potenti. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Donec adipiscing tristique risus nec. Libero id faucibus nisl tincidunt eget nullam non nisi. Feugiat in ante metus dictum at tempor commodo ullamcorper. A pellentesque sit amet porttitor eget dolor. Dictumst quisque sagittis purus sit amet volutpat consequat mauris. Vulputate ut pharetra sit amet aliquam id. Consectetur purus ut faucibus pulvinar elementum. Arcu risus quis varius quam quisque id diam. Tempor nec feugiat nisl pretium fusce id velit. Pellentesque dignissim enim sit amet venenatis urna. Gravida arcu ac tortor dignissim. Quis commodo odio aenean sed adipiscing diam donec. Nunc eget lorem dolor sed viverra.

Arcu bibendum at varius vel pharetra. Varius sit amet mattis vulputate enim nulla. Leo duis ut diam quam nulla porttitor. Tellus rutrum tellus pellentesque eu tincidunt tortor. Id nibh tortor id aliquet. Sit amet aliquam id diam maecenas ultricies. Vitae turpis massa sed elementum tempus egestas sed sed. A cras semper auctor neque vitae tempus. In nisl nisi scelerisque eu ultrices vitae auctor eu. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh. Enim eu turpis egestas pretium aenean. Sit amet justo donec enim. Ullamcorper sit amet risus nullam. Viverra ipsum nunc aliquet bibendum enim. Fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus. At risus viverra adipiscing at in tellus integer feugiat. Ornare arcu odio ut sem nulla pharetra diam. Id porta nibh venenatis cras sed felis eget velit. Tristique sollicitudin nibh sit amet commodo nulla. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula.

Magna ac placerat vestibulum lectus mauris ultrices. Morbi tempus iaculis urna id volutpat. Arcu risus quis varius quam quisque id diam. In iaculis nunc sed augue lacus viverra vitae. Nec dui nunc mattis enim ut tellus elementum. Eu nisl nunc mi ipsum faucibus vitae aliquet. Auctor augue mauris augue neque gravida in fermentum et sollicitudin. Blandit aliquam etiam erat velit scelerisque. Ultrices dui sapien eget mi proin sed libero. Eu mi bibendum neque egestas. Enim ut sem viverra aliquet. Facilisis magna etiam tempor orci eu lobortis elementum. Tellus id interdum velit laoreet id donec ultrices. Egestas sed sed risus pretium quam. Ac odio tempor orci dapibus ultrices in iaculis. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Aliquet nibh praesent tristique magna sit amet purus gravida quis. Eget est lorem ipsum dolor sit.

Dolor sit amet consectetur adipiscing. In hac habitasse platea dictumst quisque. Integer eget aliquet nibh praesent tristique magna. Lectus nulla at volutpat diam ut venenatis tellus in. Ipsum consequat nisl vel pretium lectus quam id. Ac odio tempor orci dapibus. Eu non diam phasellus vestibulum lorem. Sed blandit libero volutpat sed cras ornare. Scelerisque fermentum dui faucibus in. Rutrum quisque non tellus orci ac. Neque ornare aenean euismod elementum nisi quis eleifend quam. Nibh venenatis cras sed felis. Vestibulum rhoncus est pellentesque elit. Lorem donec massa sapien faucibus et molestie. Orci ac auctor augue mauris augue neque gravida in. Viverra mauris in aliquam sem fringilla ut morbi. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Purus ut faucibus pulvinar elementum integer enim neque volutpat ac.'
);