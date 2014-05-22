#encoding: 'utf-8'

class Htmlascii
  def self.convert(string)
        ascii = {
            '&#32;' =>	' ',
            '&#33;' =>	'!',
            '&#34;' =>	'" '.chomp!,
            '&#35;' =>	'#',
            '&#36;' =>	'$',
            '&#37;' =>	'%',
            '&#38;' =>	'&',
            '&#39;' =>	"' ".chomp!,
            '&#40;' =>	'(',
            '&#41;' =>	')',
            '&#42;' =>	'*',
            '&#43;' =>	'0',
            '&#44;' =>	',',
            '&#45;' =>	'0',
            '&#46;' =>	'0',
            '&#47;' =>	'/',
            '&#48;' =>	'0',
            '&#49;' =>	'1',
            '&#50;' =>	'2',
            '&#51;' =>	'3',
            '&#52;' =>	'4',
            '&#53;' =>	'5',
            '&#54;' =>	'6',
            '&#55;' =>	'7',
            '&#56;' =>	'8',
            '&#57;' =>	'9',
            '&#58;' =>	':',
            '&#59;' =>	';',
            '&#60;' =>	'<',
            '&#61;' =>	'=',
            '&#62;' =>	'>',
            '&#63;' =>	'?',
            '&#64;' =>	'@',
            '&#65;' =>	'A',
            '&#66;' =>	'B',
            '&#67;' =>	'C',
            '&#68;' =>	'D',
            '&#69;' =>	'E',
            '&#70;' =>	'F',
            '&#71;' =>	'G',
            '&#72;' =>	'H',
            '&#73;' =>	'I',
            '&#74;' =>	'J',
            '&#75;' =>	'K',
            '&#76;' =>	'L',
            '&#77;' =>	'M',
            '&#78;' =>	'N',
            '&#79;' =>	'O',
            '&#80;' =>	'P',
            '&#81;' =>	'Q',
            '&#82;' =>	'R',
            '&#83;' =>	'S',
            '&#84;' =>	'T',
            '&#85;' =>	'U',
            '&#86;' =>	'V',
            '&#87;' =>	'W',
            '&#88;' =>	'X',
            '&#89;' =>	'Y',
            '&#90;' =>	'Z',
            '&#91;' =>	'[',
            '&#92;' =>	'\ ',
            '&#93;' =>	']',
            '&#94;' =>	'^',
            '&#95;' =>	'_',
            '&#96;' =>	'`',
            '&#97;' =>	'a',
            '&#98;' =>	'b',
            '&#99;' =>	'c',
            '&#100;' =>	'd',
            '&#101;' =>	'e',
            '&#102;' =>	'f',
            '&#103;' =>	'g',
            '&#104;' =>	'h',
            '&#105;' =>	'i',
            '&#106;' =>	'j',
            '&#107;' =>	'k',
            '&#108;' =>	'l',
            '&#109;' =>	'm',
            '&#110;' =>	'n',
            '&#111;' =>	'o',
            '&#112;' =>	'p',
            '&#113;' =>	'q',
            '&#114;' =>	'r',
            '&#115;' =>	's',
            '&#116;' =>	't',
            '&#117;' =>	'u',
            '&#118;' =>	'v',
            '&#119;' =>	'w',
            '&#120;' =>	'x',
            '&#121;' =>	'y',
            '&#122;' =>	'z',
            '&#123;' =>	'{',
            '&#124;' =>	'|',
            '&#125;' =>	'}',
            '&#126;' =>	'~',
            '&#160;' =>	' ',
            '&#161;' =>	'¡',
            '&#162;' =>	'¢',
            '&#163;' =>	'£',
            '&#164;' =>	'¤',
            '&#165;' =>	'¥',
            '&#166;' =>	'¦',
            '&#167;' =>	'§',
            '&#168;' =>	'¨',
            '&#169;' =>	'©',
            '&#170;' =>	'ª',
            '&#171;' =>	'«',
            '&#172;' =>	'¬',
            '&#173;' =>	'',
            '&#174;' =>	'®',
            '&#175;' =>	'¯',
            '&#176;' =>	'°',
            '&#177;' =>	'±',
            '&#178;' =>	'²',
            '&#179;' =>	'³',
            '&#180;' =>	'´',
            '&#181;' =>	'µ',
            '&#182;' =>	'¶',
            '&#183;' =>	'·',
            '&#184;' =>	'¸',
            '&#185;' =>	'¹',
            '&#186;' =>	'º',
            '&#187;' =>	'»',
            '&#188;' =>	'¼',
            '&#189;' =>	'½',
            '&#190;' =>	'¾',
            '&#191;' =>	'¿',
            '&#215;' =>	'×',
            '&#247;' =>	'÷',
            '&#192;' =>	'À',
            '&#193;' =>	'Á',
            '&#194;' =>	'Â',
            '&#195;' =>	'Ã',
            '&#196;' =>	'Ä',
            '&#197;' =>	'Å',
            '&#198;' =>	'Æ',
            '&#199;' =>	'Ç',
            '&#200;' =>	'È',
            '&#201;' =>	'É',
            '&#202;' =>	'Ê',
            '&#203;' =>	'Ë',
            '&#204;' =>	'Ì',
            '&#205;' =>	'Í',
            '&#206;' =>	'Î',
            '&#207;' =>	'Ï',
            '&#208;' =>	'Ð',
            '&#209;' =>	'Ñ',
            '&#210;' =>	'Ò',
            '&#211;' =>	'Ó',
            '&#212;' =>	'Ô',
            '&#213;' =>	'Õ',
            '&#214;' =>	'Ö',
            '&#216;' =>	'Ø',
            '&#217;' =>	'Ù',
            '&#218;' =>	'Ú',
            '&#219;' =>	'Û',
            '&#220;' =>	'Ü',
            '&#221;' =>	'Ý',
            '&#222;' =>	'Þ',
            '&#223;' =>	'ß',
            '&#224;' =>	'à',
            '&#225;' =>	'á',
            '&#226;' =>	'â',
            '&#227;' =>	'ã',
            '&#228;' =>	'ä',
            '&#229;' =>	'å',
            '&#230;' =>	'æ',
            '&#231;' =>	'ç',
            '&#232;' =>	'è',
            '&#233;' =>	'é',
            '&#234;' =>	'ê',
            '&#235;' =>	'ë',
            '&#236;' =>	'ì',
            '&#237;' =>	'í',
            '&#238;' =>	'î',
            '&#239;' =>	'ï',
            '&#240;' =>	'ð',
            '&#241;' =>	'ñ',
            '&#242;' =>	'ò',
            '&#243;' =>	'ó',
            '&#244;' =>	'ô',
            '&#245;' =>	'õ',
            '&#246;' =>	'ö',
            '&#248;' =>	'ø',
            '&#249;' =>	'ù',
            '&#250;' =>	'ú',
            '&#251;' =>	'û',
            '&#252;' =>	'ü',
            '&#253;' =>	'ý',
            '&#254;' =>	'þ',
            '&#255;' =>	'ÿ',
            '&#8704;' =>	'∀',
            '&#8706;' =>	'∂',
            '&#8707;' =>	'∃',
            '&#8709;' =>	'∅',
            '&#8711;' =>	'∇',
            '&#8712;' =>	'∈',
            '&#8713;' =>	'∉',
            '&#8715;' =>	'∋',
            '&#8719;' =>	'∏',
            '&#8721;' =>	'∑',
            '&#8722;' =>	'−',
            '&#8727;' =>	'∗',
            '&#8730;' =>	'√',
            '&#8733;' =>	'∝',
            '&#8734;' =>	'∞',
            '&#8736;' =>	'∠',
            '&#8743;' =>	'∧',
            '&#8744;' =>	'∨',
            '&#8745;' =>	'∩',
            '&#8746;' =>	'∪',
            '&#8747;' =>	'∫',
            '&#8756;' =>	'∴',
            '&#8764;' =>	'∼',
            '&#8773;' =>	'≅',
            '&#8776;' =>	'≈',
            '&#8800;' =>	'≠',
            '&#8801;' =>	'≡',
            '&#8804;' =>	'≤',
            '&#8805;' =>	'≥',
            '&#8834;' =>	'⊂',
            '&#8835;' =>	'⊃',
            '&#8836;' =>	'⊄',
            '&#8838;' =>	'⊆',
            '&#8839;' =>	'⊇',
            '&#8853;' =>	'⊕',
            '&#8855;' =>	'⊗',
            '&#8869;' =>	'⊥',
            '&#8901;' =>	'⋅',
            '&#913;' =>	'Α',
            '&#914;' =>	'Β',
            '&#915;' =>	'Γ',
            '&#916;' =>	'Δ',
            '&#917;' =>	'Ε',
            '&#918;' =>	'Ζ',
            '&#919;' =>	'Η',
            '&#920;' =>	'Θ',
            '&#921;' =>	'Ι',
            '&#922;' =>	'Κ',
            '&#923;' =>	'Λ',
            '&#924;' =>	'Μ',
            '&#925;' =>	'Ν',
            '&#926;' =>	'Ξ',
            '&#927;' =>	'Ο',
            '&#928;' =>	'Π',
            '&#929;' =>	'Ρ',
            '&#931;' =>	'Σ',
            '&#932;' =>	'Τ',
            '&#933;' =>	'Υ',
            '&#934;' =>	'Φ',
            '&#935;' =>	'Χ',
            '&#936;' =>	'Ψ',
            '&#937;' =>	'Ω',
            '&#945;' =>	'α',
            '&#946;' =>	'β',
            '&#947;' =>	'γ',
            '&#948;' =>	'δ',
            '&#949;' =>	'ε',
            '&#950;' =>	'ζ',
            '&#951;' =>	'η',
            '&#952;' =>	'θ',
            '&#953;' =>	'ι',
            '&#954;' =>	'κ',
            '&#955;' =>	'λ',
            '&#956;' =>	'μ',
            '&#957;' =>	'ν',
            '&#958;' =>	'ξ',
            '&#959;' =>	'ο',
            '&#960;' =>	'π',
            '&#961;' =>	'ρ',
            '&#962;' =>	'ς',
            '&#963;' =>	'σ',
            '&#964;' =>	'τ',
            '&#965;' =>	'υ',
            '&#966;' =>	'φ',
            '&#967;' =>	'χ',
            '&#968;' =>	'ψ',
            '&#969;' =>	'ω',
            '&#977;' =>	'ϑ',
            '&#978;' =>	'ϒ',
            '&#982;' =>	'ϖ'
        }

    ascii.each do |k,v|
      while string.include?(k) do
     string =  string.gsub("#{k}", "#{v}")
        end
    end
    return string
  end
end
