#!/usr/bin/python3

def text_indentation(text):
    if not isinstance(text, str):
        raise TypeError("text must be a string")

    punctuation_marks = ['.', '?', ':']
    formatted_lines = []

    current_line = ""
    for char in text:
        current_line += char
        
        if char in punctuation_marks:
            formatted_lines.append(current_line.strip())
            current_line = ""

    if current_line:
        formatted_lines.append(current_line.strip())

    formatted_text = "\n\n".join(formatted_lines)
    print(formatted_text)

