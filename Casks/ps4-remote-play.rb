cask 'ps4-remote-play' do
  version :latest
  sha256 :no_check

  # remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg was verified as official when first introduced to the cask
  url 'https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg'
  name 'PS4 Remote Play'
  homepage 'https://www.playstation.com/en-au/get-help/help-library/apps---features/playstation-apps---features/ps4--remote-play-for-pc-and-mac/'

  pkg 'RemotePlayInstaller.pkg'

  uninstall pkgutil: 'com.playstation.RemotePlay.pkg'
end
