def staggered_case(string)
  result = ''
  upper_case = true

  characters = string.chars.map do |chr|
    if (chr =~ /[a-z]/i)
      chr = upper_case ? chr.upcase : chr.downcase
      upper_case = !upper_case
    else

    end

    chr
  end

  characters.join('')
end

p staggered_case('I Love Launch School!')# == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'