#!/usr/bin/env ruby

@images_path = './images/'
@output_file_path = './output.txt'

def code_block_for_image(image, count)
  parts = image.split(".")
  line_1 = "question#{count} = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: \"2016-08-20 18:22:25.720966\", updatedAt: \"2016-08-20 18:22:25.720966\")\n"
  line_2 = "question#{count}.questionText = \"\"\n"
  line_3 = "question#{count}.questionImage = UIImage.init(named: \"#{parts[0]}\")\n"
  line_4 = "question#{count}.answerText = \"\""
  line_5 = "questionArray.append(question#{count})\n"

  line_whitespace = "\n"

  array_for_block = [line_1, line_2, line_3, line_4, line_5, line_whitespace]
  #write the line to the output file
  array_for_block.each do |line|
    puts line
    @output_file.write line
  end
end

def iterate_images
  count = 1
  Dir.foreach(@images_path) do |image|
    next if image == '.' or image == ',,'
    code_block_for_image image, count
    count += 1
  end
end

def open_output_file
  @output_file = File.open(@output_file_path, 'a+')
end

open_output_file
iterate_images
@output_file.close
