Pod::Spec.new do |s|
  s.name     = 'Minizip'
  s.version  = '2.0.0'
  s.license  = 'zlib'
  s.summary  = 'Minizip contrib in zlib with latest bug fixes that supports PKWARE disk spanning, AES encryption, and IO buffering'
  s.description = <<-DESC
Minizip zlib contribution that includes:
* AES encryption
* I/O buffering
* PKWARE disk spanning
It also has the latest bug fixes that having been found all over the internet including the minizip forum and zlib developer's mailing list.
DESC
  s.homepage = 'https://github.com/nmoinvaz/minizip'
  s.authors = 'Gilles Vollant', 'Nathan Moinvaziri'

  s.source   = { :git => 'https://github.com/nmoinvaz/minizip.git' }
  s.libraries = 'z'

  s.subspec 'Core' do |sp|
    sp.source_files = '{mz_strm,mz_strm_mem,mz_strm_buf,mz_unzip,mz_zip,mz_strm_crypt,mz_strm_posix,mz_strm_zlib}.{c,h}'
  end

  s.subspec 'AES' do |sp|
    sp.dependency 'Minizip/Core'
    sp.source_files = 'lib/aes/*.{c,h}', 'mz_strm_aes.{c,h}'
  end

  s.subspec 'BZIP2' do |sp|
    sp.dependency 'Minizip/Core'
    sp.source_files = 'lib/bzip2/*.{c,h}', 'mz_strm_bzip.{c,h}'
  end

  s.subspec 'LZMA' do |sp|
    sp.dependency 'Minizip/Core'
    sp.source_files = 'lib/liblzma/*.{c,h}', 'mz_strm_lzma.{c,h}'
  end
end
