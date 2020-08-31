# frozen_string_literal: true

# rubocop:disable Layout/LineLength
RSpec.shared_context 'mkv_stubbs' do
  let(:drive_info_object) { OpenStruct.new(stdout_str: drive_info, stderr_str: '', status: nil) }
  let(:drive_info) do
    "MSG:1005,0,1,\"MakeMKV v1.15.2 darwin(x64-release) started\",\"%1 started\",\"MakeMKV v1.15.2 darwin(x64-release)\"\nMSG:2010,0,1,\"Optical drive \\\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10d\\\" opened in OS access mode.\",\"Optical drive \\\"%1\\\" opened in OS access mode.\",\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10d\"\nMSG:2003,0,3,\"Error 'Scsi error - ILLEGAL REQUEST:READ OF SCRAMBLED SECTOR WITHOUT AUTHENTICATION' occurred while reading 'BD-ROM MATSHITA BD-CMB UJ141EL 1.10' at offset '1048576'\",\"Error '%1' occurred while reading '%2' at offset '%3'\",\"Scsi error - ILLEGAL REQUEST:READ OF SCRAMBLED SECTOR WITHOUT AUTHENTICATION\",\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10\",\"1048576\"\nDRV:0,2,999,1,\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10\",\"18384_SCN\",\"/dev/rdisk2\"\nDRV:1,256,999,0,\"\",\"\",\"\"\nDRV:2,256,999,0,\"\",\"\",\"\"\nDRV:3,256,999,0,\"\",\"\",\"\"\nDRV:4,256,999,0,\"\",\"\",\"\"\nDRV:5,256,999,0,\"\",\"\",\"\"\nDRV:6,256,999,0,\"\",\"\",\"\"\nDRV:7,256,999,0,\"\",\"\",\"\"\nDRV:8,256,999,0,\"\",\"\",\"\"\nDRV:9,256,999,0,\"\",\"\",\"\"\nDRV:10,256,999,0,\"\",\"\",\"\"\nDRV:11,256,999,0,\"\",\"\",\"\"\nDRV:12,256,999,0,\"\",\"\",\"\"\nDRV:13,256,999,0,\"\",\"\",\"\"\nDRV:14,256,999,0,\"\",\"\",\"\"\nDRV:15,256,999,0,\"\",\"\",\"\"\nMSG:5010,0,0,\"Failed to open disc\",\"Failed to open disc\"\nTCOUNT:0\n"
  end

  let(:title_info_object) do
    OpenStruct.new(stdout_str: stubbed_info_response, stderr_str: '', status: nil)
  end
  let(:stubbed_info_response) do
    "MSG:1005,0,1,\"MakeMKV v1.15.2 darwin(x64-release) started\",\"%1 started\",\"MakeMKV v1.15.2 darwin(x64-release)\"\nMSG:2010,0,1,\"Optical drive \\\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10d\\\" opened in OS access mode.\",\"Optical drive \\\"%1\\\" opened in OS access mode.\",\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10d\"\nMSG:2003,0,3,\"Error 'Scsi error - ILLEGAL REQUEST:READ OF SCRAMBLED SECTOR WITHOUT AUTHENTICATION' occurred while reading 'BD-ROM MATSHITA BD-CMB UJ141EL 1.10' at offset '1048576'\",\"Error '%1' occurred while reading '%2' at offset '%3'\",\"Scsi error - ILLEGAL REQUEST:READ OF SCRAMBLED SECTOR WITHOUT AUTHENTICATION\",\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10\",\"1048576\"\nDRV:0,2,999,1,\"BD-ROM MATSHITA BD-CMB UJ141EL 1.10\",\"18384_SCN\",\"/dev/rdisk2\"\nDRV:1,256,999,0,\"\",\"\",\"\"\nDRV:2,256,999,0,\"\",\"\",\"\"\nDRV:3,256,999,0,\"\",\"\",\"\"\nDRV:4,256,999,0,\"\",\"\",\"\"\nDRV:5,256,999,0,\"\",\"\",\"\"\nDRV:6,256,999,0,\"\",\"\",\"\"\nDRV:7,256,999,0,\"\",\"\",\"\"\nDRV:8,256,999,0,\"\",\"\",\"\"\nDRV:9,256,999,0,\"\",\"\",\"\"\nDRV:10,256,999,0,\"\",\"\",\"\"\nDRV:11,256,999,0,\"\",\"\",\"\"\nDRV:12,256,999,0,\"\",\"\",\"\"\nDRV:13,256,999,0,\"\",\"\",\"\"\nDRV:14,256,999,0,\"\",\"\",\"\"\nDRV:15,256,999,0,\"\",\"\",\"\"\nMSG:3007,0,0,\"Using direct disc access mode\",\"Using direct disc access mode\"\nMSG:3025,16777216,3,\"Title #1 has length of 11 seconds which is less than minimum title length of 120 seconds and was therefore skipped\",\"Title #%1 has length of %2 seconds which is less than minimum title length of %3 seconds and was therefore skipped\",\"1\",\"11\",\"120\"\nMSG:3025,0,3,\"Title #1/1 has length of 8 seconds which is less than minimum title length of 120 seconds and was therefore skipped\",\"Title #%1 has length of %2 seconds which is less than minimum title length of %3 seconds and was therefore skipped\",\"1/1\",\"8\",\"120\"\nMSG:3028,0,3,\"Title #2 was added (10 cell(s), 1:35:13)\",\"Title #%1 was added (%2 cell(s), %3)\",\"2\",\"10\",\"1:35:13\"\nMSG:3028,0,3,\"Title #3 was added (11 cell(s), 1:53:42)\",\"Title #%1 was added (%2 cell(s), %3)\",\"3\",\"11\",\"1:53:42\"\nMSG:3028,0,3,\"Title #4 was added (10 cell(s), 1:28:33)\",\"Title #%1 was added (%2 cell(s), %3)\",\"4\",\"10\",\"1:28:33\"\nMSG:3028,0,3,\"Title #5 was added (10 cell(s), 1:31:24)\",\"Title #%1 was added (%2 cell(s), %3)\",\"5\",\"10\",\"1:31:24\"\nMSG:5011,0,0,\"Operation successfully completed\",\"Operation successfully completed\"\nTCOUNT:4\nCINFO:1,6206,\"DVD disc\"\nCINFO:2,0,\"18384_SCN\"\nCINFO:30,0,\"18384_SCN\"\nCINFO:31,6119,\"<b>Source information</b><br>\"\nCINFO:32,0,\"18384_SCN\"\nCINFO:33,0,\"0\"\nTINFO:0,8,0,\"10\"\nTINFO:0,9,0,\"1:35:13\"\nTINFO:0,10,0,\"1.8 GB\"\nTINFO:0,11,0,\"1947029504\"\nTINFO:0,24,0,\"02\"\nTINFO:0,25,0,\"1\"\nTINFO:0,26,0,\"1-10\"\nTINFO:0,27,0,\"title_t00.mkv\"\nTINFO:0,30,0,\"10 chapter(s) , 1.8 GB\"\nTINFO:0,31,6120,\"<b>Title information</b><br>\"\nTINFO:0,33,0,\"0\"\nSINFO:0,0,1,6201,\"Video\"\nSINFO:0,0,5,0,\"V_MPEG2\"\nSINFO:0,0,6,0,\"Mpeg2\"\nSINFO:0,0,7,0,\"Mpeg2\"\nSINFO:0,0,13,0,\"9.8 Mb/s\"\nSINFO:0,0,19,0,\"720x480\"\nSINFO:0,0,20,0,\"16:9\"\nSINFO:0,0,21,0,\"29.97 (30000/1001)\"\nSINFO:0,0,22,0,\"0\"\nSINFO:0,0,30,0,\"Mpeg2\"\nSINFO:0,0,31,6121,\"<b>Track information</b><br>\"\nSINFO:0,0,33,0,\"0\"\nSINFO:0,0,38,0,\"\"\nSINFO:0,0,42,5088,\"( Lossless conversion )\"\nSINFO:0,1,1,6202,\"Audio\"\nSINFO:0,1,2,5091,\"Stereo\"\nSINFO:0,1,3,0,\"eng\"\nSINFO:0,1,4,0,\"English\"\nSINFO:0,1,5,0,\"A_AC3\"\nSINFO:0,1,6,0,\"DD\"\nSINFO:0,1,7,0,\"Dolby Digital\"\nSINFO:0,1,13,0,\"192 Kb/s\"\nSINFO:0,1,14,0,\"2\"\nSINFO:0,1,17,0,\"48000\"\nSINFO:0,1,22,0,\"0\"\nSINFO:0,1,30,0,\"DD Stereo English\"\nSINFO:0,1,31,6121,\"<b>Track information</b><br>\"\nSINFO:0,1,33,0,\"90\"\nSINFO:0,1,38,0,\"d\"\nSINFO:0,1,39,0,\"Default\"\nSINFO:0,1,40,0,\"stereo\"\nSINFO:0,1,42,5088,\"( Lossless conversion )\"\nTINFO:1,8,0,\"11\"\nTINFO:1,9,0,\"1:53:42\"\nTINFO:1,10,0,\"2.1 GB\"\nTINFO:1,11,0,\"2321354752\"\nTINFO:1,24,0,\"03\"\nTINFO:1,25,0,\"1\"\nTINFO:1,26,0,\"1-11\"\nTINFO:1,27,0,\"title_t01.mkv\"\nTINFO:1,30,0,\"11 chapter(s) , 2.1 GB\"\nTINFO:1,31,6120,\"<b>Title information</b><br>\"\nTINFO:1,33,0,\"0\"\nSINFO:1,0,1,6201,\"Video\"\nSINFO:1,0,5,0,\"V_MPEG2\"\nSINFO:1,0,6,0,\"Mpeg2\"\nSINFO:1,0,7,0,\"Mpeg2\"\nSINFO:1,0,13,0,\"9.8 Mb/s\"\nSINFO:1,0,19,0,\"720x480\"\nSINFO:1,0,20,0,\"16:9\"\nSINFO:1,0,21,0,\"29.97 (30000/1001)\"\nSINFO:1,0,22,0,\"0\"\nSINFO:1,0,30,0,\"Mpeg2\"\nSINFO:1,0,31,6121,\"<b>Track information</b><br>\"\nSINFO:1,0,33,0,\"0\"\nSINFO:1,0,38,0,\"\"\nSINFO:1,0,42,5088,\"( Lossless conversion )\"\nSINFO:1,1,1,6202,\"Audio\"\nSINFO:1,1,2,5091,\"Stereo\"\nSINFO:1,1,3,0,\"eng\"\nSINFO:1,1,4,0,\"English\"\nSINFO:1,1,5,0,\"A_AC3\"\nSINFO:1,1,6,0,\"DD\"\nSINFO:1,1,7,0,\"Dolby Digital\"\nSINFO:1,1,13,0,\"192 Kb/s\"\nSINFO:1,1,14,0,\"2\"\nSINFO:1,1,17,0,\"48000\"\nSINFO:1,1,22,0,\"0\"\nSINFO:1,1,30,0,\"DD Stereo English\"\nSINFO:1,1,31,6121,\"<b>Track information</b><br>\"\nSINFO:1,1,33,0,\"90\"\nSINFO:1,1,38,0,\"d\"\nSINFO:1,1,39,0,\"Default\"\nSINFO:1,1,40,0,\"stereo\"\nSINFO:1,1,42,5088,\"( Lossless conversion )\"\nTINFO:2,8,0,\"10\"\nTINFO:2,9,0,\"1:28:33\"\nTINFO:2,10,0,\"1.6 GB\"\nTINFO:2,11,0,\"1810173952\"\nTINFO:2,24,0,\"04\"\nTINFO:2,25,0,\"1\"\nTINFO:2,26,0,\"1-10\"\nTINFO:2,27,0,\"title_t02.mkv\"\nTINFO:2,30,0,\"10 chapter(s) , 1.6 GB\"\nTINFO:2,31,6120,\"<b>Title information</b><br>\"\nTINFO:2,33,0,\"0\"\nSINFO:2,0,1,6201,\"Video\"\nSINFO:2,0,5,0,\"V_MPEG2\"\nSINFO:2,0,6,0,\"Mpeg2\"\nSINFO:2,0,7,0,\"Mpeg2\"\nSINFO:2,0,13,0,\"9.8 Mb/s\"\nSINFO:2,0,19,0,\"720x480\"\nSINFO:2,0,20,0,\"4:3\"\nSINFO:2,0,21,0,\"29.97 (30000/1001)\"\nSINFO:2,0,22,0,\"0\"\nSINFO:2,0,30,0,\"Mpeg2\"\nSINFO:2,0,31,6121,\"<b>Track information</b><br>\"\nSINFO:2,0,33,0,\"0\"\nSINFO:2,0,38,0,\"\"\nSINFO:2,0,42,5088,\"( Lossless conversion )\"\nSINFO:2,1,1,6202,\"Audio\"\nSINFO:2,1,2,5091,\"Stereo\"\nSINFO:2,1,3,0,\"eng\"\nSINFO:2,1,4,0,\"English\"\nSINFO:2,1,5,0,\"A_AC3\"\nSINFO:2,1,6,0,\"DD\"\nSINFO:2,1,7,0,\"Dolby Digital\"\nSINFO:2,1,13,0,\"192 Kb/s\"\nSINFO:2,1,14,0,\"2\"\nSINFO:2,1,17,0,\"48000\"\nSINFO:2,1,22,0,\"0\"\nSINFO:2,1,30,0,\"DD Stereo English\"\nSINFO:2,1,31,6121,\"<b>Track information</b><br>\"\nSINFO:2,1,33,0,\"90\"\nSINFO:2,1,38,0,\"d\"\nSINFO:2,1,39,0,\"Default\"\nSINFO:2,1,40,0,\"stereo\"\nSINFO:2,1,42,5088,\"( Lossless conversion )\"\nTINFO:3,8,0,\"10\"\nTINFO:3,9,0,\"1:31:24\"\nTINFO:3,10,0,\"1.7 GB\"\nTINFO:3,11,0,\"1870516224\"\nTINFO:3,24,0,\"05\"\nTINFO:3,25,0,\"1\"\nTINFO:3,26,0,\"1-10\"\nTINFO:3,27,0,\"title_t03.mkv\"\nTINFO:3,30,0,\"10 chapter(s) , 1.7 GB\"\nTINFO:3,31,6120,\"<b>Title information</b><br>\"\nTINFO:3,33,0,\"0\"\nSINFO:3,0,1,6201,\"Video\"\nSINFO:3,0,5,0,\"V_MPEG2\"\nSINFO:3,0,6,0,\"Mpeg2\"\nSINFO:3,0,7,0,\"Mpeg2\"\nSINFO:3,0,13,0,\"9.8 Mb/s\"\nSINFO:3,0,19,0,\"720x480\"\nSINFO:3,0,20,0,\"4:3\"\nSINFO:3,0,21,0,\"29.97 (30000/1001)\"\nSINFO:3,0,22,0,\"0\"\nSINFO:3,0,30,0,\"Mpeg2\"\nSINFO:3,0,31,6121,\"<b>Track information</b><br>\"\nSINFO:3,0,33,0,\"0\"\nSINFO:3,0,38,0,\"\"\nSINFO:3,0,42,5088,\"( Lossless conversion )\"\nSINFO:3,1,1,6202,\"Audio\"\nSINFO:3,1,2,5091,\"Stereo\"\nSINFO:3,1,3,0,\"eng\"\nSINFO:3,1,4,0,\"English\"\nSINFO:3,1,5,0,\"A_AC3\"\nSINFO:3,1,6,0,\"DD\"\nSINFO:3,1,7,0,\"Dolby Digital\"\nSINFO:3,1,13,0,\"192 Kb/s\"\nSINFO:3,1,14,0,\"2\"\nSINFO:3,1,17,0,\"48000\"\nSINFO:3,1,22,0,\"0\"\nSINFO:3,1,30,0,\"DD Stereo English\"\nSINFO:3,1,31,6121,\"<b>Track information</b><br>\"\n"
  end
end
# rubocop:enable Layout/LineLength
