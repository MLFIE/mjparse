module Mjt::Analysis
  # ���𓾂�
  
  #�J���͖��Ή�
  #���m�{�`�[�g�C�c
  class YakuJudger
		attr_accessor :result,
					  :agari,
					  :funclist

	    def initialize(resultin, agariin)
			@result     = resultin
			@agari   = agariin
			@funclist = Array.new()
		end

		##################�ȉ����C�����\�b�h#############################################
		
		#�O������Ăяo����郁�\�b�h
		def outmethod()
		
				#�K�p��������X�g
				funclist = [[isTanyao, "Tanyao"], [isPinfu, "Pinfu"]]
				
				#�@�𔻒胁�\�b�h�𔽕��K�p�itrue�̏ꍇ�����X�g�ɒǉ��j		
				funclist.each do |func|
					if func[0]
						result.yaku_list.push(func[1])
					end
				end
				
				p result.yaku_list
				return "hoge"
		end
	
		#################�ȉ��𔻒�p�����Ăяo�����\�b�h�S###############################
	
		#�^�����I���胁�\�b�h
		def isTanyao()
				result.mentsu_list.each do |mentsu|
					mentsu.each do | pai |
						  if pai.number == 1 || pai.number == 9 || pai.type == "j"
								return false
						  end
					end
				end
				result.atama.each do |atam_pi|
						  if atam_pi.number == 1 || atam_pi.number == 9 || atam_pi.type == "j"
								return false
					end
				end
				return true
		end
		
		#�s���t���胁�\�b�h
		def isPinfu()
			#�R�[�c�Ȃ�����
			result.mentsu_list.each do |mentsu|
					if mentsu[0].number == mentsu[1].number || mentsu[1].number == mentsu[2].number
						return false
					end
			end
			
			
			
	

			return true
		end
		
		#�C�[�y�[�R�[���胁�\�b�h
		def isEepeko()
			
		end
  end
end