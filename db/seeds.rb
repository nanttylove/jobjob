# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['สถานประกอบการณ์', 'ผู้สมัครงาน'].each do |role|
  Role.find_or_create_by({name: role})
end

['ชาย', 'หญิง'].each do |sex|
  Sex.find_or_create_by({name: sex})
end

['ผู้พิการที่บกพร่องทางการมองเห็น', 'ผู้พิการที่บกพร่องทางการได้ยิน', 'บุคคลที่มีความบกพร่องทางด้านร่างกายหรือสุขภาพ', 'บุคคลที่มีความบกพร่องทางการพูดและภาษา'].each do |disability|
  Disability.find_or_create_by({name: disability})
end

['กฎหมาย', 'การตลาด', 'เกษตร/จัดสวน/ปศุสัตว์/ประมง/เหมืองแร่', 'ขาย', 'เขียนแบบ/งานDrawing/AutoCad/ออกแบบวิศวกรรม', 'คลังสินค้า/โลจิสติกส์/Supply Chain', 'คอมพิวเตอร์/IT/โปรแกรมเมอร์', 'งานบันเทิง/นักแสดง/นางแบบ/นักร้อง/Stylist/Costume', 'จัดซื้อ/ธุรกิจ/ประสานงานทั่วไป', 'สิ่งแวดล้อม/ISO', 'ช่างเทคนิค/อิเลคโทรนิค/ซ่อมบำรุง/ช่างพิมพ์', 'นักเขียน/บรรณาธิการ/พิสูจน์อักษร/Copywriter/นักแปลภาษา', 'นำเข้า-ส่งออก/Shipping/ติดต่อต่างประเทศ/BOI', 'บริการลูกค้า/Call Center', 'บัญชี/การเงิน', 'บุคคล/ฝึกอบรม', 'ผลิต/ควบคุมคุณภาพ/โรงงาน', 'ผู้จัดการ/ผู้อำนวยการ/MD/CEO', 'ภูมิศาสตร์/แผนที่/GIS/ผังเมือง', 'สำรวจ/สถาปัตถ์/มัณฑนากร/ประเมินราคา', 'งานฝีมือ/สิ่งทอ', 'อาจารย์/ครู/งานวิชาการ', 'อัญมณีและเครื่องประดับ', 'สุขภาพ/โภชนาการ/ความงาม/ฟิสเนส', 'ศิลปะ/กราฟฟิค/ออกแบบ/ช่างภาพ', 'วิจัย/วิทยาศาสตร์', 'อื่นๆ'].each do |jobtype|
  Jobtype.find_or_create_by({name: jobtype})
end

['กระบี่', 'กาญจนบุรี', 'กาฬสินธุ์', 'กรุงเทพมหานคร', 'กำแพงเพชร', 'ขอนแก่น', 'จันทบุรี', 'ฉะเชิงเทรา', 'ชัยนาท', 'ชัยภูมิ', 'ชุมพร', 'เชียงราย', 'เชียงใหม่', 'ชลบุรี', 'ตาก', 'ตรัง', 'ตราด', 'นครนายก', 'นครปฐม', 'นครพนม', 'นครศรีธรรมราช', 'นครสวรรค์', 'นราธิวาส', 'น่าน', 'นนทบุรี', 'บุรีรัมย์', 'บึงกาฬ', 'ประจวบคีรีขันธ์', 'ปทุมธานี', 'ปัตตานี', 'ปราจีนบุรี', 'พะเยา', 'พระนครศรีอยุธยา', 'พังงา', 'พัทลุง', 'พิจิตร', 'พิษณุโลก', 'เพชรบุรี', 'เพชรบูรณ์', 'แพร่', 'ภูเก็ต', 'มหาสารคาม', 'มุกดาหาร', 'แม่ฮ่องสอน', 'ยะลา', 'ยโสธร', 'ระนอง', 'ระยอง', 'ราชบุรี', 'สระแก้ว', 'สกลนคร', 'สระบุรี', 'สมุทรปราการ', 'สมุทรสาคร', 'สมุทรสงคราม', 'สุโขทัย', 'สุพรรณบุรี', 'สุราษฎร์ธานี', 'สุรินทร์', 'สิงห์บุรี', 'สตูล', 'สงขลา', 'ร้อยเอ็ด', 'เลย', 'ลพบุรี', 'ลำพูน', 'ลำปาง', 'ศรีสะเกษ', 'หนองบัวลำภู', 'หนองคาย', 'อ่างทอง', 'อุดรธานี', 'อุตรดิตถ์', 'อุทัยธานี', 'อุบลราชธานี', 'อำนาจเจริญ'].each do |province|
  Province.find_or_create_by({name: province})
end

['ประกันสังคม', 'ค่าอาหาร', 'เงินช่วยเหลือการศึกษาบุตร', 'เงินช่วยเหลือกรณีมีบุตร', 'เงินช่วยเหลือกรณีวันปีใหม่', 'เงินช่วยเหลือกรณีวันแรงงานแห่งชาติ', 'งานกีฬาสี', 'งานเลี้ยงครบรอบปีบริษัท', 'สหภาพแรงงาน', 'แพทย์และพยาบาลประจำ', 'การฝึกอบรมในบริษัท', 'การฝึกอบรมนอกบริษัท', 'ส่วนลดในการซื้อผลิตภัณฑ์ของบริษัท', 'วันหยุดพักผ่อน', 'เงินเบิกค่าใช้จ่ายและอุปกรณ์', 'ทุนการศึกษาสำหรับพนักงาน', 'เงินกู้ยืม', 'ของขวัญวันปีใหม่', 'ของขวัญวันเกิด', 'กองทุนเงินทดแทน', 'ประกันชีวิต', 'ประกันสุขภาพ', 'โบนัสประจำปี', 'staff party', 'ชุดยูนิฟอร์ม', 'ค่าเดินทาง', 'เบี้ยเลี้ยงออกต่างจังหวัด', 'รถรับส่งประจำทาง', 'เบี้ยขยัน', 'ฟิตเนส', 'คอมมิสชั่น', 'เงินช่วยเหลือการสมรส', 'เงินช่วยเหลือเมื่อออกจากงาน', 'เงินท่องเที่ยวประจำปี', 'เงินช่วยเหลือการเสียชีวิต', 'อื่นๆ'].each do |welfare|
  Welfare.find_or_create_by({name: welfare})
end

['สำเนาบัตรประจำตัวประชาชน', 'สำเนาทะเบียนบ้าน', 'สำเนาบัตรผู้พิการ', 'สำเนาบัตรฝึกอบรม(ถ้ามี)', 'อื่นๆ'].each do |document|
  Document.find_or_create_by({name: document})
end

['สมัครด้วยตนเอง', 'สมัครผ่านโทรศัพท์', 'สมัครผ่านวีดีโอคอล', 'อื่นๆ'].each do |toapply|
  Toapply.find_or_create_by({name: toapply})
end