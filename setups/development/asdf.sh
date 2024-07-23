#!/bin/bash

echo "Configurando o ASDF"

# Plugins
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add python https://github.com/asdf-community/asdf-python
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin-add php https://github.com/asdf-community/asdf-php.git
asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin.git
asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git
asdf plugin-add lua https://github.com/Stratus3D/asdf-lua.git
asdf plugin add dotnet https://github.com/hensou/asdf-dotnet.git
asdf plugin-add java https://github.com/halcyon/asdf-java.git

# Install
asdf install nodejs latest
asdf install python latest
asdf install ruby latest
asdf install erlang latest
asdf install golang latest
asdf install php latest
asdf install rust latest
asdf install elixir latest
asdf install kotlin latest
asdf install crystal latest
asdf install lua latest
asdf install dotnet latest
asdf install java latest

# Globals
asdf global nodejs latest
asdf global python latest
asdf global ruby latest
asdf global golang latest
asdf global php latest
asdf global rust latest
asdf global erlang latest
asdf global elixir latest
asdf global kotlin latest
asdf global crystal latest
asdf global lua latest
asdf global dotnet latest
asdf global java latest

echo "ASDF configurado!"
