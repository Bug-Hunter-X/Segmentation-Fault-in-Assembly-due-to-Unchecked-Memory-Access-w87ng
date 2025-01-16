mov ecx, [some_ecx_value]
mov ebx, some_ebx_value

; Check for potential out-of-bounds access
mov eax, ebx
add eax, ecx
mov edx, some_memory_end
cmp eax, edx
jge handle_out_of_bounds

; Access memory safely
mov eax, [ebx+ecx*4]
jmp skip_out_of_bounds

handle_out_of_bounds:
; Handle out-of-bounds situation (e.g., error handling, return)

skip_out_of_bounds:
; ... rest of your code ... 