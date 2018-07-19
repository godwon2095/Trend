class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum gender: [:남자, :여자, :해당없음]
  enum shape: [:매우마름, :마름, :보통, :근육형, :약간살찜, :살찜]
  enum skinton: [:백색, :약간백색, :황색, :약간흑색, :흑색]
  enum category: [:캐주얼, :댄디, :아메카지, :터프, :섹시, :청순, :힙, :화려]
  enum check_info: [:공개, :비공개]
  enum height: ["134이하", "135~140", "141~145", "146~150", "151~155", "156~160", "161~165", "166~170", "171~175", "176~180", "181~185", "186~190", "191이상"]
  enum weight: ["34이하", "35~40", "41~45", "46~50", "51~55", "56~60", "61~65", "66~70", "71~75","76~80", "81~85", "86~90", "91~95", "96~100", "101이상"]
  enum area: ["서울특별시", "경기도", "강원도", "충청북도", "충청남도", "전라북도", "전라남도", "경상북도", "경상남도", "제주도", "제주특별자치도", "부산광역시", "대구광역시", "인천광역시",
     "광주광역시", "대전광역시", "울산광역시", "세종특별자치시"]

end
