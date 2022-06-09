def strCaesarCipher(strMsg, intShift)
  strMsg.each_char.with_index do |chr, intIndx|
    intOrd = chr.to_s.ord
    (a, z) = case intOrd
             when 97..122 then [97, 122] # a-z
             when 65..90 then [65, 90]  # A-Z
             else
               next
             end

    intRtt = (intShift > 0 ? 1 : -1) * 26
    intOrd += intShift
    intOrd -= intRtt unless intOrd.between?(a, z)
    strMsg[intIndx] = intOrd.chr
  end

  strMsg
end

msg = 'Learning Ruby with The Odin Project'

puts strCaesarCipher(msg, 1)