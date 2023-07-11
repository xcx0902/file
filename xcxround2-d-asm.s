.LC0:
  .string ""
.LC1:
  .string "/"
initFS():
  sub rsp, 8
  mov edi, 176
  call operator new(unsigned long)
  xor r8d, r8d
  mov ecx, OFFSET FLAT:.LC0
  xor esi, esi
  lea rdx, [rax+24]
  mov BYTE PTR [rax+24], 0
  lea rdi, [rax+8]
  mov QWORD PTR [rax+8], rdx
  lea rdx, [rax+56]
  mov QWORD PTR [rax+40], rdx
  lea rdx, [rax+80]
  mov QWORD PTR [rax+96], rdx
  mov QWORD PTR [rax+104], rdx
  lea rdx, [rax+128]
  mov QWORD PTR [rax+144], rdx
  mov QWORD PTR [rax+152], rdx
  xor edx, edx
  mov QWORD PTR [rax+16], 0
  mov QWORD PTR [rax+48], 0
  mov BYTE PTR [rax+56], 0
  mov DWORD PTR [rax+80], 0
  mov QWORD PTR [rax+88], 0
  mov QWORD PTR [rax+112], 0
  mov DWORD PTR [rax+128], 0
  mov QWORD PTR [rax+136], 0
  mov QWORD PTR [rax+160], 0
  mov BYTE PTR [rax], 1
  mov QWORD PTR root[rip], rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_replace(unsigned long, unsigned long, char const*, unsigned long)
  mov rdi, QWORD PTR root[rip]
  mov r8d, 1
  xor esi, esi
  mov ecx, OFFSET FLAT:.LC1
  mov rdx, QWORD PTR [rdi+48]
  add rdi, 40
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_replace(unsigned long, unsigned long, char const*, unsigned long)
  mov rax, QWORD PTR root[rip]
  mov QWORD PTR p[rip], 0
  mov QWORD PTR [rax+168], 0
  mov QWORD PTR now[rip], rax
  add rsp, 8
  ret
.LC2:
  .string "*"
.LC3:
  .string " "
.LC4:
  .string "EMPTY"
ls():
  push r12
  push rbp
  push rbx
  sub rsp, 48
  mov r12, QWORD PTR now[rip]
  mov rbx, QWORD PTR [r12+144]
  sub r12, -128
  cmp r12, rbx
  je .L163
  lea rbp, [rsp+16]
.L168:
  mov rsi, QWORD PTR [rbx+32]
  mov rdx, QWORD PTR [rbx+40]
  mov rdi, rsp
  mov QWORD PTR [rsp], rbp
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rax, QWORD PTR [rbx+64]
  cmp BYTE PTR [rax], 0
  mov QWORD PTR [rsp+32], rax
  jne .L166
  mov edx, 1
  mov esi, OFFSET FLAT:.LC2
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
.L166:
  mov rdx, QWORD PTR [rsp+8]
  mov rsi, QWORD PTR [rsp]
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rdi, rax
  mov edx, 1
  mov esi, OFFSET FLAT:.LC3
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rdi, QWORD PTR [rsp]
  cmp rdi, rbp
  je .L167
  mov rax, QWORD PTR [rsp+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L167:
  mov rdi, rbx
  call std::_Rb_tree_increment(std::_Rb_tree_node_base*)
  mov rbx, rax
  cmp r12, rax
  jne .L168
.L170:
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L179
  cmp BYTE PTR [rbx+56], 0
  je .L172
  movsx esi, BYTE PTR [rbx+67]
.L173:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  add rsp, 48
  pop rbx
  mov rdi, rax
  pop rbp
  pop r12
  jmp std::basic_ostream<char, std::char_traits<char> >::flush()
.L172:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L173
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L173
.L163:
  mov edx, 5
  mov esi, OFFSET FLAT:.LC4
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  jmp .L170
  mov rbx, rax
  jmp .L174
ls() [clone .cold]:
pwd():
  push r13
  push r12
  push rbp
  push rbx
  sub rsp, 72
  mov rax, QWORD PTR now[rip]
  lea rbx, [rsp+16]
  mov rdi, rsp
  mov rsi, QWORD PTR [rax+40]
  mov rdx, QWORD PTR [rax+48]
  mov QWORD PTR [rsp], rbx
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rax, QWORD PTR [rsp+8]
  mov rsi, QWORD PTR [rsp]
  cmp rax, 1
  je .L208
.L183:
  lea rdx, [rax-1]
  lea rbp, [rsp+48]
  cmp rdx, rax
  lea rdi, [rsp+32]
  mov QWORD PTR [rsp+32], rbp
  cmova rdx, rax
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [clone .isra.0]
  mov rdx, QWORD PTR [rsp+40]
  mov rsi, QWORD PTR [rsp+32]
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov r12, rax
  mov rax, QWORD PTR [rax]
  mov rax, QWORD PTR [rax-24]
  mov r13, QWORD PTR [r12+240+rax]
  test r13, r13
  je .L206
  cmp BYTE PTR [r13+56], 0
  je .L189
  movsx esi, BYTE PTR [r13+67]
.L190:
  mov rdi, r12
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rdi, QWORD PTR [rsp+32]
  cmp rdi, rbp
  je .L187
  mov rax, QWORD PTR [rsp+48]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L187:
  mov rdi, QWORD PTR [rsp]
  cmp rdi, rbx
  je .L182
  mov rax, QWORD PTR [rsp+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L182:
  add rsp, 72
  pop rbx
  pop rbp
  pop r12
  pop r13
  ret
.L189:
  mov rdi, r13
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [r13+0]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L190
  mov rdi, r13
  call rax
  movsx esi, al
  jmp .L190
.L208:
  cmp BYTE PTR [rsi], 47
  jne .L183
  mov edx, 1
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rbp, rax
  mov rax, QWORD PTR [rax]
  mov rax, QWORD PTR [rax-24]
  mov r12, QWORD PTR [rbp+240+rax]
  test r12, r12
  je .L205
  cmp BYTE PTR [r12+56], 0
  je .L185
  movsx esi, BYTE PTR [r12+67]
.L186:
  mov rdi, rbp
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  jmp .L187
.L185:
  mov rdi, r12
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [r12]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L186
  mov rdi, r12
  call rax
  movsx esi, al
  jmp .L186
  jmp .L204
  jmp .L202
pwd() [clone .cold]:
.LC7:
  .string "vector::_M_realloc_insert"
.LC8:
  .string "basic_string::substr"
.LC9:
  .string "%s: __pos (which is %zu) > this->size() (which is %zu)"
cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push r13
  pxor xmm0, xmm0
  push r12
  push rbp
  push rbx
  mov rbx, rdi
  sub rsp, 40
  mov rcx, QWORD PTR [rsi+8]
  mov QWORD PTR [rdi+16], 0
  movups XMMWORD PTR [rdi], xmm0
  test rcx, rcx
  je .L279
  mov r12, rsi
  mov ebp, 1
  mov edx, 4294967295
  xor eax, eax
  jmp .L280
.L282:
  mov eax, ebp
  add ebp, 1
  cmp rax, rcx
  jnb .L333
.L280:
  mov rsi, QWORD PTR [r12]
  cmp BYTE PTR [rsi+rax], 47
  jne .L282
  cmp edx, -1
  je .L283
  lea eax, [rbp-1]
  sub eax, edx
  cmp rcx, rdx
  jb .L329
  sub rcx, rdx
  add rsi, rdx
  lea r13, [rsp+16]
  mov rdi, rsp
  cmp rcx, rax
  mov QWORD PTR [rsp], r13
  cmova rcx, rax
  lea rdx, [rsi+rcx]
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, QWORD PTR [rbx+8]
  cmp rsi, QWORD PTR [rbx+16]
  je .L285
  lea rdx, [rsi+16]
  mov rcx, QWORD PTR [rsp+8]
  mov QWORD PTR [rsi], rdx
  mov rax, QWORD PTR [rsp]
  cmp rax, r13
  je .L334
  mov QWORD PTR [rsi], rax
  mov rax, QWORD PTR [rsp+16]
  mov QWORD PTR [rsi+16], rax
.L293:
  mov QWORD PTR [rsi+8], rcx
  mov rcx, QWORD PTR [r12+8]
  add QWORD PTR [rbx+8], 32
.L283:
  mov edx, ebp
.L336:
  mov eax, ebp
  add ebp, 1
  cmp rax, rcx
  jb .L280
.L333:
  mov eax, edx
  cmp rax, rcx
  jb .L335
.L279:
  add rsp, 40
  mov rax, rbx
  pop rbx
  pop rbp
  pop r12
  pop r13
  ret
.L285:
  mov rdx, rsp
  mov rdi, rbx
  call void std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_realloc_insert<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(__gnu_cxx::__normal_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&)
  mov rdi, QWORD PTR [rsp]
  cmp rdi, r13
  je .L332
  mov rax, QWORD PTR [rsp+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L332:
  mov rcx, QWORD PTR [r12+8]
  mov edx, ebp
  jmp .L336
.L335:
  mov rsi, QWORD PTR [r12]
  lea r13, [rsp+16]
  mov rdi, rsp
  mov QWORD PTR [rsp], r13
  lea rdx, [rsi+rcx]
  add rsi, rax
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, QWORD PTR [rbx+8]
  cmp rsi, QWORD PTR [rbx+16]
  je .L296
  lea r9, [rsi+16]
  mov rdx, QWORD PTR [rsp+8]
  mov QWORD PTR [rsi], r9
  mov rax, QWORD PTR [rsp]
  cmp rax, r13
  je .L337
  mov QWORD PTR [rsi], rax
  mov rax, QWORD PTR [rsp+16]
  mov QWORD PTR [rsi+16], rax
.L304:
  mov QWORD PTR [rsi+8], rdx
  mov rax, rbx
  add QWORD PTR [rbx+8], 32
  add rsp, 40
  pop rbx
  pop rbp
  pop r12
  pop r13
  ret
.L334:
  lea rax, [rcx+1]
  cmp eax, 8
  jb .L338
  mov rdi, QWORD PTR [rsp+16]
  mov QWORD PTR [rsi+16], rdi
  mov edi, eax
  mov r8, QWORD PTR [r13-8+rdi]
  mov QWORD PTR [rdx-8+rdi], r8
  lea r8, [rsi+24]
  and r8, -8
  sub rdx, r8
  add eax, edx
  sub r13, rdx
  and eax, -8
  cmp eax, 8
  jb .L293
  and eax, -8
  xor edx, edx
.L291:
  mov edi, edx
  add edx, 8
  mov r9, QWORD PTR [r13+0+rdi]
  mov QWORD PTR [r8+rdi], r9
  cmp edx, eax
  jb .L291
  jmp .L293
.L338:
  test al, 4
  jne .L339
  test eax, eax
  je .L293
  movzx edi, BYTE PTR [rsp+16]
  mov BYTE PTR [rsi+16], dil
  test al, 2
  je .L293
  mov eax, eax
  movzx edi, WORD PTR [r13-2+rax]
  mov WORD PTR [rdx-2+rax], di
  jmp .L293
.L296:
  mov rdx, rsp
  mov rdi, rbx
  call void std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_realloc_insert<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(__gnu_cxx::__normal_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&&)
  mov rdi, QWORD PTR [rsp]
  cmp rdi, r13
  je .L279
  mov rax, QWORD PTR [rsp+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
  add rsp, 40
  mov rax, rbx
  pop rbx
  pop rbp
  pop r12
  pop r13
  ret
.L337:
  lea rcx, [rdx+1]
  cmp ecx, 8
  jnb .L298
  test cl, 4
  jne .L340
  test ecx, ecx
  je .L304
  movzx eax, BYTE PTR [r13+0]
  mov BYTE PTR [rsi+16], al
  test cl, 2
  je .L304
  mov ecx, ecx
  movzx eax, WORD PTR [r13-2+rcx]
  mov WORD PTR [r9-2+rcx], ax
  jmp .L304
.L298:
  mov rdi, QWORD PTR [r13+0]
  mov rax, r9
  mov QWORD PTR [rsi+16], rdi
  mov edi, ecx
  mov r8, QWORD PTR [r13-8+rdi]
  mov QWORD PTR [r9-8+rdi], r8
  lea r8, [rsi+24]
  and r8, -8
  sub rax, r8
  add ecx, eax
  sub r13, rax
  and ecx, -8
  cmp ecx, 8
  jb .L304
  and ecx, -8
  xor eax, eax
.L302:
  mov edi, eax
  add eax, 8
  mov r9, QWORD PTR [r13+0+rdi]
  mov QWORD PTR [r8+rdi], r9
  cmp eax, ecx
  jb .L302
  jmp .L304
.L339:
  mov edi, DWORD PTR [rsp+16]
  mov eax, eax
  mov DWORD PTR [rsi+16], edi
  mov edi, DWORD PTR [r13-4+rax]
  mov DWORD PTR [rdx-4+rax], edi
  jmp .L293
.L340:
  mov eax, DWORD PTR [r13+0]
  mov ecx, ecx
  mov DWORD PTR [rsi+16], eax
  mov eax, DWORD PTR [r13-4+rcx]
  mov DWORD PTR [r9-4+rcx], eax
  jmp .L304
  jmp .L328
  mov rbp, rax
  jmp .L308
  mov rbp, rax
  jmp .L308
cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) [clone .cold]:
.L329:
  mov esi, OFFSET FLAT:.LC8
  mov edi, OFFSET FLAT:.LC9
  xor eax, eax
  call std::__throw_out_of_range_fmt(char const*, ...)
.L328:
  mov rbp, rax
.L307:
  mov rdi, rbx
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  mov rdi, rbp
  call _Unwind_Resume
.L308:
  mov rdi, rsp
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L307

std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0] [clone .cold]:
.L510:
  call __cxa_begin_catch
  mov esi, 72
  mov rdi, rbx
  call operator delete(void*, unsigned long)
  call __cxa_rethrow
  mov rbx, rax
  call __cxa_end_catch
  mov rdi, rbx
  call _Unwind_Resume

std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0] [clone .cold]:
.L603:
  call __cxa_begin_catch
  mov esi, 72
  mov rdi, rbx
  call operator delete(void*, unsigned long)
  call __cxa_rethrow
  mov rbx, rax
  call __cxa_end_catch
  mov rdi, rbx
  call _Unwind_Resume

.LC13:
  .string "basic_string::append"
.LC14:
  .string "err"
.LC15:
  .string "ok"
cd(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push r15
  push r14
  push r13
  push r12
  push rbp
  push rbx
  mov rbx, rdi
  sub rsp, 152
  mov rbp, QWORD PTR [rdi]
  mov r12, QWORD PTR [rdi+8]
  cmp BYTE PTR [rbp+0], 47
  jne .L734
  lea rax, [rsp+112]
  mov QWORD PTR [rsp+16], rax
  lea rax, [rsp+128]
  mov QWORD PTR [rsp], rax
.L624:
  mov rdx, QWORD PTR [rbx+8]
  mov rbx, QWORD PTR [rsp+16]
  mov rsi, rbp
  mov r15, QWORD PTR [rsp]
  mov rdi, rbx
  add rdx, rbp
  mov QWORD PTR [rsp+112], r15
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, rbx
  lea rdi, [rsp+80]
  call cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+112]
  cmp rdi, r15
  je .L638
  mov rax, QWORD PTR [rsp+128]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L638:
  mov rax, QWORD PTR root[rip]
  mov rsi, QWORD PTR [rsp+80]
  mov rcx, QWORD PTR [rsp+88]
  mov QWORD PTR p[rip], rax
  mov QWORD PTR [rsp+56], rsi
  mov QWORD PTR [rsp+24], rcx
  cmp rsi, rcx
  je .L639
  mov rbx, rsi
  mov ebp, 2147483648
  movabs r12, -2147483649
.L645:
  mov rax, QWORD PTR [rsp]
  mov rdx, QWORD PTR [rbx+8]
  mov rdi, QWORD PTR [rsp+16]
  mov QWORD PTR [rsp+112], rax
  mov rsi, QWORD PTR [rbx]
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov r14, QWORD PTR [rsp+120]
  cmp r14, 1
  je .L743
  cmp r14, 2
  jne .L641
  mov rax, QWORD PTR [rsp+112]
  cmp WORD PTR [rax], 11822
  je .L744
.L641:
  mov r9, QWORD PTR p[rip]
  mov r15, QWORD PTR [r9+88]
  lea rax, [r9+80]
  test r15, r15
  je .L687
  mov rsi, QWORD PTR [rsp+112]
  mov QWORD PTR [rsp+48], rbx
  mov r13, rax
  mov rbx, r14
  mov QWORD PTR [rsp+32], r9
  mov r14, r15
  mov QWORD PTR [rsp+8], rsi
  mov QWORD PTR [rsp+40], rax
  jmp .L654
.L651:
  mov r13, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L745
.L654:
  mov r15, QWORD PTR [r14+40]
  mov rdi, QWORD PTR [r14+32]
  cmp rbx, r15
  mov rdx, r15
  cmovbe rdx, rbx
  test rdx, rdx
  je .L649
  mov rsi, QWORD PTR [rsp+8]
  call memcmp
  test eax, eax
  jne .L650
.L649:
  mov rcx, r15
  sub rcx, rbx
  cmp rcx, rbp
  jge .L651
  cmp rcx, r12
  jle .L652
  mov eax, ecx
.L650:
  test eax, eax
  jns .L651
.L652:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L654
.L745:
  mov rax, QWORD PTR [rsp+40]
  mov r14, rbx
  mov r9, QWORD PTR [rsp+32]
  mov rbx, QWORD PTR [rsp+48]
  cmp rax, r13
  je .L648
  mov rcx, QWORD PTR [r13+40]
  mov rsi, QWORD PTR [r13+32]
  cmp r14, rcx
  mov rdx, rcx
  cmovbe rdx, r14
  test rdx, rdx
  je .L655
  mov rdi, QWORD PTR [rsp+8]
  mov QWORD PTR [rsp+40], rcx
  call memcmp
  mov r9, QWORD PTR [rsp+32]
  mov rcx, QWORD PTR [rsp+40]
  test eax, eax
  jne .L656
.L655:
  mov r8, r14
  sub r8, rcx
  cmp r8, rbp
  jge .L657
  cmp r8, r12
  jle .L648
  mov eax, r8d
.L656:
  test eax, eax
  js .L648
.L657:
  cmp BYTE PTR [r13+64], 0
  je .L730
  mov r10, QWORD PTR p[rip]
  mov r13, QWORD PTR [r10+136]
  lea rax, [r10+128]
  test r13, r13
  je .L688
  mov rsi, QWORD PTR [rsp+112]
  mov QWORD PTR [rsp+48], rbx
  mov r15, rax
  mov rbx, r13
  mov QWORD PTR [rsp+32], r10
  mov r14, QWORD PTR [rsp+120]
  mov QWORD PTR [rsp+8], rsi
  mov QWORD PTR [rsp+40], rax
  jmp .L665
.L662:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L746
.L665:
  mov r13, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r13, r14
  cmovbe rdx, r13
  test rdx, rdx
  je .L660
  mov rsi, QWORD PTR [rsp+8]
  call memcmp
  test eax, eax
  jne .L661
.L660:
  mov rcx, r13
  sub rcx, r14
  cmp rcx, rbp
  jge .L662
  cmp rcx, r12
  jle .L663
  mov eax, ecx
.L661:
  test eax, eax
  jns .L662
.L663:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L665
.L746:
  mov rax, QWORD PTR [rsp+40]
  mov r10, QWORD PTR [rsp+32]
  mov rbx, QWORD PTR [rsp+48]
  cmp rax, r15
  je .L659
  mov rcx, QWORD PTR [r15+40]
  mov rdx, r14
  mov rsi, QWORD PTR [r15+32]
  cmp rcx, r14
  cmovbe rdx, rcx
  test rdx, rdx
  je .L666
  mov rdi, QWORD PTR [rsp+8]
  mov QWORD PTR [rsp+40], rcx
  call memcmp
  mov r10, QWORD PTR [rsp+32]
  mov rcx, QWORD PTR [rsp+40]
  test eax, eax
  jne .L667
.L666:
  mov r8, r14
  sub r8, rcx
  cmp r8, rbp
  jge .L668
  cmp r8, r12
  jle .L659
  mov eax, r8d
.L667:
  test eax, eax
  js .L659
.L668:
  mov rax, QWORD PTR [r15+64]
  jmp .L647
.L744:
  mov rax, QWORD PTR p[rip]
  mov rax, QWORD PTR [rax+168]
.L647:
  mov QWORD PTR p[rip], rax
  test rax, rax
  je .L731
  cmp BYTE PTR [rax], 0
  je .L732
  mov rdi, QWORD PTR [rsp+112]
.L742:
  mov rax, QWORD PTR [rsp]
  cmp rdi, rax
  je .L643
  mov rax, QWORD PTR [rsp+128]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L643:
  add rbx, 32
  cmp QWORD PTR [rsp+24], rbx
  jne .L645
  mov rax, QWORD PTR p[rip]
.L639:
  mov edx, 2
  mov esi, OFFSET FLAT:.LC15
  mov edi, OFFSET FLAT:std::cout
  mov QWORD PTR now[rip], rax
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L733
  cmp BYTE PTR [rbx+56], 0
  je .L673
  movsx esi, BYTE PTR [rbx+67]
.L674:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rax, QWORD PTR [rsp+56]
  mov rsi, QWORD PTR [rsp+24]
  mov rbp, QWORD PTR [rsp+24]
  mov rbx, rax
  cmp rax, rsi
  je .L679
.L675:
  mov rdi, QWORD PTR [rbx]
  lea rax, [rbx+16]
  cmp rdi, rax
  je .L678
  mov rax, QWORD PTR [rbx+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L678:
  add rbx, 32
  cmp rbp, rbx
  jne .L675
.L679:
  cmp QWORD PTR [rsp+56], 0
  je .L623
  mov rsi, QWORD PTR [rsp+96]
  mov rdi, QWORD PTR [rsp+56]
  add rsp, 152
  pop rbx
  pop rbp
  sub rsi, rdi
  pop r12
  pop r13
  pop r14
  pop r15
  jmp operator delete(void*, unsigned long)
.L743:
  mov rdi, QWORD PTR [rsp+112]
  cmp BYTE PTR [rdi], 46
  jne .L641
  jmp .L742
.L688:
  mov r15, rax
.L659:
  mov rax, QWORD PTR [rsp+16]
  lea rdi, [r10+120]
  lea rdx, [rsp+72]
  mov rsi, r15
  mov QWORD PTR [rsp+72], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r15, rax
  jmp .L668
.L687:
  mov r13, rax
.L648:
  mov rax, QWORD PTR [rsp+16]
  lea rdi, [r9+72]
  lea rdx, [rsp+64]
  mov rsi, r13
  mov QWORD PTR [rsp+64], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r13, rax
  jmp .L657
.L734:
  mov rax, QWORD PTR now[rip]
  lea rdi, [rsp+112]
  mov QWORD PTR [rsp+16], rdi
  mov r15, QWORD PTR [rax+48]
  mov r14, QWORD PTR [rax+40]
  lea rax, [rsp+128]
  mov QWORD PTR [rsp+120], 0
  mov QWORD PTR [rsp], rax
  lea rsi, [r15+r12]
  mov QWORD PTR [rsp+112], rax
  mov BYTE PTR [rsp+128], 0
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+120]
  cmp rax, r15
  jb .L728
  mov rdi, QWORD PTR [rsp+16]
  mov rdx, r15
  mov rsi, r14
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+120]
  cmp rax, r12
  jb .L729
  mov rdi, QWORD PTR [rsp+16]
  mov rdx, r12
  mov rsi, rbp
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rdi, QWORD PTR [rbx]
  lea rcx, [rbx+16]
  mov rdx, QWORD PTR [rsp+120]
  mov rax, QWORD PTR [rsp+112]
  mov rsi, QWORD PTR [rsp]
  cmp rdi, rcx
  je .L747
  cmp rax, rsi
  je .L630
  movq xmm0, rdx
  mov rcx, QWORD PTR [rbx+16]
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+128]
  movups XMMWORD PTR [rbx+8], xmm0
  test rdi, rdi
  je .L636
  mov QWORD PTR [rsp+112], rdi
  mov QWORD PTR [rsp+128], rcx
.L635:
  mov QWORD PTR [rsp+120], 0
  mov rax, QWORD PTR [rsp]
  mov BYTE PTR [rdi], 0
  mov rdi, QWORD PTR [rsp+112]
  cmp rdi, rax
  je .L637
  mov rax, QWORD PTR [rsp+128]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L637:
  mov rbp, QWORD PTR [rbx]
  jmp .L624
.L673:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L674
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L674
.L623:
  add rsp, 152
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  pop r15
  ret
.L747:
  cmp rax, rsi
  je .L630
  movq xmm0, rdx
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+128]
  movups XMMWORD PTR [rbx+8], xmm0
.L636:
  mov rax, QWORD PTR [rsp]
  mov QWORD PTR [rsp+112], rax
  lea rax, [rsp+128]
  mov QWORD PTR [rsp], rax
  mov rdi, rax
  jmp .L635
.L630:
  test rdx, rdx
  je .L633
  cmp rdx, 1
  je .L748
  mov rsi, QWORD PTR [rsp]
  call memcpy
  mov rdx, QWORD PTR [rsp+120]
  mov rdi, QWORD PTR [rbx]
.L633:
  mov QWORD PTR [rbx+8], rdx
  mov BYTE PTR [rdi+rdx], 0
  mov rdi, QWORD PTR [rsp+112]
  jmp .L635
.L748:
  movzx eax, BYTE PTR [rsp+128]
  mov BYTE PTR [rdi], al
  mov rdx, QWORD PTR [rsp+120]
  mov rdi, QWORD PTR [rbx]
  jmp .L633
  jmp .L723
  mov rdi, rax
  jmp .L683
  mov rbx, rax
  jmp .L681
  jmp .L725
  jmp .L727

cd(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) [clone .cold]:
.L731:
  mov edi, 8
  call __cxa_allocate_exception
  xor edx, edx
  mov esi, OFFSET FLAT:_ZTIPKc
  mov QWORD PTR [rax], OFFSET FLAT:.LC14
  mov rdi, rax
  call __cxa_throw
.L723:
  mov rdi, QWORD PTR [rsp+16]
  mov rbx, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
.L683:
  call __cxa_begin_catch
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&) [clone .isra.0]
  call __cxa_end_catch
  lea rdi, [rsp+80]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  jmp .L623
.L681:
  mov rdi, QWORD PTR [rsp+16]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
.L725:
  mov rbx, rax
  jmp .L686
.L730:
  mov edi, 8
  call __cxa_allocate_exception
  xor edx, edx
  mov esi, OFFSET FLAT:_ZTIPKc
  mov QWORD PTR [rax], OFFSET FLAT:.LC14
  mov rdi, rax
  call __cxa_throw
.L732:
  mov edi, 8
  call __cxa_allocate_exception
  xor edx, edx
  mov esi, OFFSET FLAT:_ZTIPKc
  mov QWORD PTR [rax], OFFSET FLAT:.LC14
  mov rdi, rax
  call __cxa_throw
.L733:
  call std::__throw_bad_cast()
  mov rbx, rax
  call __cxa_end_catch
.L686:
  lea rdi, [rsp+80]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  mov rdi, rbx
  call _Unwind_Resume
.L728:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L729:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L727:
  mov rdi, QWORD PTR [rsp+16]
  mov rbx, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume

rm(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push r15
  push r14
  mov r14d, OFFSET FLAT:.LC0
  push r13
  push r12
  push rbp
  xor ebp, ebp
  push rbx
  mov rbx, rdi
  sub rsp, 248
  mov r13, QWORD PTR [rdi]
  cmp BYTE PTR [r13+0], 47
  je .L750
  mov ebp, 1
  mov r14d, OFFSET FLAT:.LC1
.L750:
  mov r12, QWORD PTR [rbx+8]
  lea rax, [rsp+192]
  lea rdi, [rsp+176]
  mov QWORD PTR [rsp+184], 0
  mov QWORD PTR [rsp+176], rax
  lea rsi, [rbp+0+r12]
  mov BYTE PTR [rsp+192], 0
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+184]
  cmp rax, rbp
  jb .L921
  mov rdx, rbp
  mov rsi, r14
  lea rdi, [rsp+176]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+184]
  cmp rax, r12
  jb .L922
  mov rdx, r12
  mov rsi, r13
  lea rdi, [rsp+176]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rbp, QWORD PTR [rbx]
  mov r14, QWORD PTR [rbx+8]
  cmp BYTE PTR [rbp+0], 47
  je .L945
  mov rax, QWORD PTR now[rip]
  lea r12, [rsp+224]
  mov r15, QWORD PTR [rax+48]
  mov r13, QWORD PTR [rax+40]
  lea rax, [rsp+208]
  mov QWORD PTR [rsp+208], r12
  mov rdi, rax
  mov QWORD PTR [rsp], rax
  lea rsi, [r15+r14]
  mov BYTE PTR [rsp+224], 0
  mov QWORD PTR [rsp+216], 0
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+216]
  cmp rax, r15
  jb .L923
  mov rdi, QWORD PTR [rsp]
  mov rdx, r15
  mov rsi, r13
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+216]
  cmp rax, r14
  jb .L924
  mov rdi, QWORD PTR [rsp]
  mov rdx, r14
  mov rsi, rbp
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rdi, QWORD PTR [rbx]
  lea rdx, [rbx+16]
  mov rax, QWORD PTR [rsp+208]
  movq xmm0, QWORD PTR [rsp+216]
  cmp rdi, rdx
  je .L946
  cmp rax, r12
  je .L762
  movhps xmm0, QWORD PTR [rsp+224]
  mov rdx, QWORD PTR [rbx+16]
  mov QWORD PTR [rbx], rax
  movups XMMWORD PTR [rbx+8], xmm0
  test rdi, rdi
  je .L768
  mov QWORD PTR [rsp+208], rdi
  mov QWORD PTR [rsp+224], rdx
.L767:
  mov QWORD PTR [rsp+216], 0
  mov BYTE PTR [rdi], 0
  mov rdi, QWORD PTR [rsp+208]
  cmp rdi, r12
  je .L769
  mov rax, QWORD PTR [rsp+224]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L769:
  mov rbp, QWORD PTR [rbx]
.L755:
  mov rdx, QWORD PTR [rbx+8]
  mov rbx, QWORD PTR [rsp]
  mov rsi, rbp
  mov QWORD PTR [rsp+208], r12
  add rdx, rbp
  mov rdi, rbx
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, rbx
  lea rdi, [rsp+80]
  call cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+208]
  cmp rdi, r12
  je .L770
  mov rax, QWORD PTR [rsp+224]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L770:
  mov rax, QWORD PTR now[rip]
  mov rbx, QWORD PTR [rsp]
  mov QWORD PTR [rsp+208], r12
  mov rdx, QWORD PTR [rax+48]
  mov rsi, QWORD PTR [rax+40]
  mov rdi, rbx
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, rbx
  lea rdi, [rsp+112]
  call cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+208]
  cmp rdi, r12
  je .L771
  mov rax, QWORD PTR [rsp+224]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L771:
  mov r13, QWORD PTR root[rip]
  mov rax, QWORD PTR [rsp+80]
  mov rcx, QWORD PTR [rsp+88]
  mov QWORD PTR p[rip], r13
  mov QWORD PTR [rsp+48], rax
  mov QWORD PTR [rsp+8], rcx
  cmp rax, rcx
  je .L772
  mov rbx, rax
  mov ebp, 2147483648
.L778:
  mov rdx, QWORD PTR [rbx+8]
  mov rdi, QWORD PTR [rsp]
  mov QWORD PTR [rsp+208], r12
  mov rsi, QWORD PTR [rbx]
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov r14, QWORD PTR [rsp+216]
  cmp r14, 1
  je .L947
  cmp r14, 2
  jne .L774
  mov rax, QWORD PTR [rsp+208]
  cmp WORD PTR [rax], 11822
  je .L948
.L774:
  mov r9, QWORD PTR p[rip]
  mov r15, QWORD PTR [r9+88]
  lea rax, [r9+80]
  test r15, r15
  je .L853
  mov rcx, QWORD PTR [rsp+208]
  mov QWORD PTR [rsp+32], rbx
  mov r13, rax
  mov rbx, r14
  mov QWORD PTR [rsp+40], r12
  mov r12, r15
  mov QWORD PTR [rsp+56], rcx
  mov r14, rcx
  mov QWORD PTR [rsp+16], r9
  mov QWORD PTR [rsp+24], rax
  jmp .L787
.L784:
  mov r13, r12
  mov r12, QWORD PTR [r12+16]
  test r12, r12
  je .L949
.L787:
  mov r15, QWORD PTR [r12+40]
  mov rdi, QWORD PTR [r12+32]
  cmp rbx, r15
  mov rdx, r15
  cmovbe rdx, rbx
  test rdx, rdx
  je .L782
  mov rsi, r14
  call memcmp
  test eax, eax
  jne .L783
.L782:
  mov rcx, r15
  sub rcx, rbx
  cmp rcx, rbp
  jge .L784
  movabs rax, -2147483649
  cmp rcx, rax
  jle .L785
  mov eax, ecx
.L783:
  test eax, eax
  jns .L784
.L785:
  mov r12, QWORD PTR [r12+24]
  test r12, r12
  jne .L787
.L949:
  mov rax, QWORD PTR [rsp+24]
  mov r14, rbx
  mov r9, QWORD PTR [rsp+16]
  mov rbx, QWORD PTR [rsp+32]
  mov r12, QWORD PTR [rsp+40]
  cmp rax, r13
  je .L781
  mov rcx, QWORD PTR [r13+40]
  mov rsi, QWORD PTR [r13+32]
  cmp r14, rcx
  mov rdx, rcx
  cmovbe rdx, r14
  test rdx, rdx
  je .L788
  mov rdi, QWORD PTR [rsp+56]
  mov QWORD PTR [rsp+24], rcx
  call memcmp
  mov r9, QWORD PTR [rsp+16]
  mov rcx, QWORD PTR [rsp+24]
  test eax, eax
  jne .L789
.L788:
  mov r8, r14
  sub r8, rcx
  cmp r8, rbp
  jge .L790
  movabs rax, -2147483649
  cmp r8, rax
  jle .L781
  mov eax, r8d
.L789:
  test eax, eax
  js .L781
.L790:
  cmp BYTE PTR [r13+64], 0
  je .L925
  mov r10, QWORD PTR p[rip]
  mov r13, QWORD PTR [r10+136]
  lea rax, [r10+128]
  test r13, r13
  je .L854
  mov rcx, QWORD PTR [rsp+208]
  mov r14, QWORD PTR [rsp+216]
  mov QWORD PTR [rsp+32], rbx
  mov r15, rax
  mov QWORD PTR [rsp+40], r12
  mov rbx, r13
  mov QWORD PTR [rsp+56], rcx
  mov r13, r14
  mov r12, rcx
  mov QWORD PTR [rsp+16], r10
  mov QWORD PTR [rsp+24], rax
  jmp .L798
.L795:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L950
.L798:
  mov r14, QWORD PTR [rbx+40]
  mov rdx, r13
  mov rdi, QWORD PTR [rbx+32]
  cmp r14, r13
  cmovbe rdx, r14
  test rdx, rdx
  je .L793
  mov rsi, r12
  call memcmp
  test eax, eax
  jne .L794
.L793:
  mov rcx, r14
  sub rcx, r13
  cmp rcx, rbp
  jge .L795
  movabs rax, -2147483649
  cmp rcx, rax
  jle .L796
  mov eax, ecx
.L794:
  test eax, eax
  jns .L795
.L796:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L798
.L950:
  mov rax, QWORD PTR [rsp+24]
  mov r10, QWORD PTR [rsp+16]
  mov r14, r13
  mov rbx, QWORD PTR [rsp+32]
  mov r12, QWORD PTR [rsp+40]
  cmp rax, r15
  je .L792
  mov rcx, QWORD PTR [r15+40]
  mov rdx, r13
  mov rsi, QWORD PTR [r15+32]
  cmp rcx, r13
  cmovbe rdx, rcx
  test rdx, rdx
  je .L799
  mov rdi, QWORD PTR [rsp+56]
  mov QWORD PTR [rsp+24], rcx
  call memcmp
  mov r10, QWORD PTR [rsp+16]
  mov rcx, QWORD PTR [rsp+24]
  test eax, eax
  jne .L800
.L799:
  mov r8, r14
  sub r8, rcx
  cmp r8, rbp
  jge .L801
  movabs rax, -2147483649
  cmp r8, rax
  jle .L792
  mov eax, r8d
.L800:
  test eax, eax
  js .L792
.L801:
  mov rax, QWORD PTR [r15+64]
  jmp .L780
.L948:
  mov rax, QWORD PTR p[rip]
  mov rax, QWORD PTR [rax+168]
.L780:
  mov QWORD PTR p[rip], rax
  test rax, rax
  je .L926
  mov rdi, QWORD PTR [rsp+208]
.L944:
  cmp rdi, r12
  je .L776
  mov rax, QWORD PTR [rsp+224]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L776:
  add rbx, 32
  cmp QWORD PTR [rsp+8], rbx
  jne .L778
  mov r13, QWORD PTR p[rip]
.L772:
  mov rdx, QWORD PTR [r13+48]
  mov rbx, QWORD PTR [rsp]
  mov QWORD PTR [rsp+208], r12
  mov rsi, QWORD PTR [r13+40]
  mov rdi, rbx
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, rbx
  lea rdi, [rsp+144]
  call cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+208]
  cmp rdi, r12
  je .L804
  mov rax, QWORD PTR [rsp+224]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L804:
  mov rbp, QWORD PTR [rsp+152]
  mov rbx, QWORD PTR [rsp+120]
  mov rcx, QWORD PTR [rsp+144]
  mov rsi, QWORD PTR [rsp+112]
  mov rax, rbp
  mov rdx, rbx
  sub rax, rcx
  sub rdx, rsi
  mov QWORD PTR [rsp+16], rcx
  mov QWORD PTR [rsp], rsi
  cmp rdx, rax
  jb .L805
  mov r10, rax
  sar r10, 5
  test rax, rax
  je .L806
  lea r8, [rcx+8]
  lea r15, [rsi+8]
  mov rcx, r13
  xor r12d, r12d
  mov r13, rbp
  mov r14, r8
  mov rbp, rbx
  mov rbx, r10
.L808:
  mov rdx, QWORD PTR [r14]
  cmp rdx, QWORD PTR [r15]
  je .L951
.L935:
  mov rbx, rbp
  mov rbp, r13
  mov r13, rcx
.L805:
  mov rax, QWORD PTR p[rip]
  mov r12, QWORD PTR [rax+168]
  mov rax, QWORD PTR [rsp+8]
  lea r14, [rax-32]
  lea rdi, [r12+72]
  mov QWORD PTR p[rip], r12
  mov rsi, r14
  call std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::equal_range(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov r15, rax
  cmp rax, QWORD PTR [r12+96]
  je .L952
.L809:
  lea rcx, [r12+80]
  cmp rdx, rax
  je .L812
  mov QWORD PTR [rsp+40], r13
  mov QWORD PTR [rsp+24], rbx
  mov rbx, rdx
  mov QWORD PTR [rsp+32], rbp
  mov rbp, rcx
.L811:
  mov r13, r15
  mov rdi, r15
  call std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
  mov rdi, r13
  mov rsi, rbp
  mov r15, rax
  call std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
  mov rdi, QWORD PTR [rax+32]
  lea rdx, [rax+48]
  mov r13, rax
  cmp rdi, rdx
  je .L813
  mov rax, QWORD PTR [rax+48]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L813:
  mov esi, 72
  mov rdi, r13
  call operator delete(void*, unsigned long)
  sub QWORD PTR [r12+112], 1
  cmp rbx, r15
  jne .L811
  mov rbx, QWORD PTR [rsp+24]
  mov rbp, QWORD PTR [rsp+32]
  mov r13, QWORD PTR [rsp+40]
  mov r12, QWORD PTR p[rip]
.L812:
  mov rsi, r14
  lea rdi, [r12+120]
  call std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::equal_range(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov r14, rdx
  mov r15, rax
  cmp rax, QWORD PTR [r12+144]
  je .L953
.L814:
  lea rdx, [r12+128]
  cmp r14, rax
  je .L817
  mov QWORD PTR [rsp+32], rbp
  mov QWORD PTR [rsp+24], rbx
  mov rbx, rdx
.L816:
  mov rbp, r15
  mov rdi, r15
  call std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
  mov rdi, rbp
  mov rsi, rbx
  mov r15, rax
  call std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
  mov rdi, QWORD PTR [rax+32]
  lea rdx, [rax+48]
  mov rbp, rax
  cmp rdi, rdx
  je .L818
  mov rax, QWORD PTR [rax+48]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L818:
  mov esi, 72
  mov rdi, rbp
  call operator delete(void*, unsigned long)
  sub QWORD PTR [r12+160], 1
  cmp r14, r15
  jne .L816
  mov rbx, QWORD PTR [rsp+24]
  mov rbp, QWORD PTR [rsp+32]
.L817:
  mov rdi, QWORD PTR [r13+136]
  call std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_erase(std::_Rb_tree_node<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >*) [clone .isra.0]
  mov rdi, QWORD PTR [r13+88]
  call std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_erase(std::_Rb_tree_node<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >*) [clone .isra.0]
  mov rdi, QWORD PTR [r13+40]
  lea rax, [r13+56]
  cmp rdi, rax
  je .L820
  mov rax, QWORD PTR [r13+56]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L820:
  mov rdi, QWORD PTR [r13+8]
  lea rax, [r13+24]
  cmp rdi, rax
  je .L821
  mov rax, QWORD PTR [r13+24]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L821:
  mov rdi, r13
  mov esi, 176
  call operator delete(void*, unsigned long)
  mov rax, QWORD PTR [rsp+16]
  mov r13, rax
  cmp rbp, rax
  je .L826
.L822:
  mov rdi, QWORD PTR [r13+0]
  lea rax, [r13+16]
  cmp rdi, rax
  je .L825
  mov rax, QWORD PTR [r13+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L825:
  add r13, 32
  cmp rbp, r13
  jne .L822
.L826:
  cmp QWORD PTR [rsp+16], 0
  je .L824
  mov rsi, QWORD PTR [rsp+160]
  mov rdi, QWORD PTR [rsp+16]
  sub rsi, rdi
  call operator delete(void*, unsigned long)
.L824:
  mov edx, 2
  mov esi, OFFSET FLAT:.LC15
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbp, QWORD PTR std::cout[rax+240]
  test rbp, rbp
  je .L927
  cmp BYTE PTR [rbp+56], 0
  je .L828
  movsx esi, BYTE PTR [rbp+67]
.L829:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rax, QWORD PTR [rsp]
  mov rbp, rax
  cmp rax, rbx
  je .L834
.L830:
  mov rdi, QWORD PTR [rbp+0]
  lea rax, [rbp+16]
  cmp rdi, rax
  je .L833
  mov rax, QWORD PTR [rbp+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L833:
  add rbp, 32
  cmp rbx, rbp
  jne .L830
.L834:
  cmp QWORD PTR [rsp], 0
  je .L832
  mov rsi, QWORD PTR [rsp+128]
  mov rdi, QWORD PTR [rsp]
  sub rsi, rdi
  call operator delete(void*, unsigned long)
.L832:
  mov rax, QWORD PTR [rsp+48]
  mov rcx, QWORD PTR [rsp+8]
  mov rbp, QWORD PTR [rsp+8]
  mov rbx, rax
  cmp rax, rcx
  je .L839
.L835:
  mov rdi, QWORD PTR [rbx]
  lea rax, [rbx+16]
  cmp rdi, rax
  je .L838
  mov rax, QWORD PTR [rbx+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L838:
  add rbx, 32
  cmp rbp, rbx
  jne .L835
.L839:
  cmp QWORD PTR [rsp+48], 0
  je .L837
  mov rsi, QWORD PTR [rsp+96]
  mov rdi, QWORD PTR [rsp+48]
  sub rsi, rdi
  call operator delete(void*, unsigned long)
.L837:
  mov rdi, QWORD PTR [rsp+176]
  lea rax, [rsp+192]
  cmp rdi, rax
  je .L749
  mov rax, QWORD PTR [rsp+192]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L749:
  add rsp, 248
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  pop r15
  ret
.L947:
  mov rdi, QWORD PTR [rsp+208]
  cmp BYTE PTR [rdi], 46
  jne .L774
  jmp .L944
.L951:
  test rdx, rdx
  je .L807
  mov rsi, QWORD PTR [r15-8]
  mov rdi, QWORD PTR [r14-8]
  mov QWORD PTR [rsp+24], rcx
  call memcmp
  mov rcx, QWORD PTR [rsp+24]
  test eax, eax
  jne .L935
.L807:
  add r12, 1
  add r14, 32
  add r15, 32
  cmp r12, rbx
  jb .L808
.L806:
  mov edi, 8
  call __cxa_allocate_exception
  xor edx, edx
  mov esi, OFFSET FLAT:_ZTIPKc
  mov QWORD PTR [rax], OFFSET FLAT:.LC14
  mov rdi, rax
  call __cxa_throw
.L854:
  mov r15, rax
.L792:
  mov rax, QWORD PTR [rsp]
  lea rdi, [r10+120]
  lea rdx, [rsp+144]
  mov rsi, r15
  mov QWORD PTR [rsp+144], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r15, rax
  jmp .L801
.L853:
  mov r13, rax
.L781:
  mov rax, QWORD PTR [rsp]
  lea rdi, [r9+72]
  lea rdx, [rsp+72]
  mov rsi, r13
  mov QWORD PTR [rsp+72], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r13, rax
  jmp .L790
.L828:
  mov rdi, rbp
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbp+0]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L829
  mov rdi, rbp
  call rax
  movsx esi, al
  jmp .L829
.L945:
  lea rax, [rsp+208]
  lea r12, [rsp+224]
  mov QWORD PTR [rsp], rax
  jmp .L755
.L953:
  lea rdx, [r12+128]
  cmp r14, rdx
  jne .L814
  mov rdi, QWORD PTR [r12+136]
  call std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_erase(std::_Rb_tree_node<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >*) [clone .isra.0]
  mov QWORD PTR [r12+144], r14
  mov QWORD PTR [r12+136], 0
  mov QWORD PTR [r12+152], r14
  mov QWORD PTR [r12+160], 0
  jmp .L817
.L952:
  lea rcx, [r12+80]
  cmp rdx, rcx
  jne .L809
  mov rdi, QWORD PTR [r12+88]
  mov QWORD PTR [rsp+24], rdx
  call std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_erase(std::_Rb_tree_node<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >*) [clone .isra.0]
  mov rdx, QWORD PTR [rsp+24]
  mov QWORD PTR [r12+88], 0
  mov QWORD PTR [r12+112], 0
  mov QWORD PTR [r12+96], rdx
  mov QWORD PTR [r12+104], rdx
  mov r12, QWORD PTR p[rip]
  jmp .L812
.L762:
  movq rax, xmm0
  test rax, rax
  je .L765
  cmp rax, 1
  je .L954
  movq rdx, xmm0
  mov rsi, r12
  call memcpy
  mov rdi, QWORD PTR [rbx]
  movq xmm0, QWORD PTR [rsp+216]
.L765:
  movq rax, xmm0
  movq QWORD PTR [rbx+8], xmm0
  mov BYTE PTR [rdi+rax], 0
  mov rdi, QWORD PTR [rsp+208]
  jmp .L767
.L946:
  cmp rax, r12
  je .L762
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+224]
  movups XMMWORD PTR [rbx+8], xmm0
.L768:
  mov QWORD PTR [rsp+208], r12
  lea r12, [rsp+224]
  mov rdi, r12
  jmp .L767
.L954:
  movzx eax, BYTE PTR [rsp+224]
  mov BYTE PTR [rdi], al
  mov rdi, QWORD PTR [rbx]
  movq xmm0, QWORD PTR [rsp+216]
  jmp .L765
  jmp .L918
  mov rbx, rax
  jmp .L760
  mov rbx, rax
  jmp .L842
  jmp .L920
  mov rbx, rax
  jmp .L846
  mov rbx, rax
  jmp .L847
  jmp .L916
  mov rbx, rax
  jmp .L848
  jmp .L914
  mov rbx, rax
  jmp .L844
  mov rbx, rax
  jmp .L843

rm(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) [clone .cold]:
.L922:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L918:
  mov rbx, rax
  lea rdi, [rsp+176]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
.L924:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L923:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L920:
  mov rdi, QWORD PTR [rsp]
  mov rbx, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
.L760:
  lea rdi, [rsp+176]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
.L842:
  mov rdi, QWORD PTR [rsp]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L760
.L926:
  mov edi, 8
  call __cxa_allocate_exception
  xor edx, edx
  mov esi, OFFSET FLAT:_ZTIPKc
  mov QWORD PTR [rax], OFFSET FLAT:.LC14
  mov rdi, rax
  call __cxa_throw
.L847:
  mov rdi, QWORD PTR [rsp]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
.L846:
  mov rdi, rbx
  call __cxa_begin_catch
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&) [clone .isra.0]
  call __cxa_end_catch
  lea rdi, [rsp+112]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  lea rdi, [rsp+80]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  lea rdi, [rsp+176]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L749
.L914:
  mov rdi, QWORD PTR [rsp]
  mov rbx, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L846
.L916:
  mov rbx, rax
  jmp .L851
  mov rbx, rax
  call __cxa_end_catch
.L851:
  lea rdi, [rsp+112]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
.L844:
  lea rdi, [rsp+80]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  jmp .L760
.L927:
  call std::__throw_bad_cast()
.L925:
  mov edi, 8
  call __cxa_allocate_exception
  xor edx, edx
  mov esi, OFFSET FLAT:_ZTIPKc
  mov QWORD PTR [rax], OFFSET FLAT:.LC14
  mov rdi, rax
  call __cxa_throw
.L848:
  lea rdi, [rsp+144]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  jmp .L846
.L921:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L843:
  mov rdi, QWORD PTR [rsp]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L844

mkdir(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push r15
  push r14
  push r13
  push r12
  push rbp
  push rbx
  mov rbx, rdi
  sub rsp, 280
  mov rbp, QWORD PTR [rdi]
  mov r12, QWORD PTR [rdi+8]
  cmp BYTE PTR [rbp+0], 47
  jne .L1295
  lea rax, [rsp+240]
  mov QWORD PTR [rsp+56], rax
  lea rax, [rsp+256]
  mov QWORD PTR [rsp+16], rax
.L956:
  mov rdx, QWORD PTR [rbx+8]
  mov rbx, QWORD PTR [rsp+56]
  mov rsi, rbp
  mov r15, QWORD PTR [rsp+16]
  mov rdi, rbx
  add rdx, rbp
  mov QWORD PTR [rsp+240], r15
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, rbx
  lea rdi, [rsp+144]
  call cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+240]
  cmp rdi, r15
  je .L970
  mov rax, QWORD PTR [rsp+256]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L970:
  mov rax, QWORD PTR root[rip]
  mov rsi, QWORD PTR [rsp+152]
  mov QWORD PTR p[rip], rax
  mov rax, QWORD PTR [rsp+144]
  mov QWORD PTR [rsp+8], rsi
  mov QWORD PTR [rsp+72], rax
  cmp rax, rsi
  je .L1121
  mov BYTE PTR [rsp+64], 0
  mov r14, rax
  mov ebp, 2147483648
  movabs r13, -2147483649
.L1119:
  lea rax, [rsp+192]
  mov rdx, QWORD PTR [r14+8]
  lea rdi, [rsp+176]
  mov QWORD PTR [rsp+176], rax
  mov rsi, QWORD PTR [r14]
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov r8, QWORD PTR [rsp+184]
  cmp r8, 1
  je .L1325
  cmp r8, 2
  jne .L973
  mov r15, QWORD PTR [rsp+176]
  cmp WORD PTR [r15], 11822
  je .L1326
.L973:
  mov rbx, QWORD PTR p[rip]
  mov r9, QWORD PTR [rbx+88]
  lea rax, [rbx+80]
  mov QWORD PTR [rsp+24], rax
  test r9, r9
  je .L1146
  mov r12, QWORD PTR [rsp+176]
  mov QWORD PTR [rsp+32], rbx
  mov r15, rax
  mov rbx, r8
  mov QWORD PTR [rsp+40], r14
  mov r14, r9
  mov QWORD PTR [rsp+48], r9
  mov QWORD PTR [rsp], r12
  jmp .L990
.L987:
  mov r15, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1327
.L990:
  mov r12, QWORD PTR [r14+40]
  mov rdi, QWORD PTR [r14+32]
  cmp rbx, r12
  mov rdx, r12
  cmovbe rdx, rbx
  test rdx, rdx
  je .L985
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L986
.L985:
  mov rcx, r12
  sub rcx, rbx
  cmp rcx, rbp
  jge .L987
  cmp rcx, r13
  jle .L988
  mov eax, ecx
.L986:
  test eax, eax
  jns .L987
.L988:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L990
.L1327:
  mov r8, rbx
  mov r14, QWORD PTR [rsp+40]
  mov rbx, QWORD PTR [rsp+32]
  mov r10, r15
  mov r9, QWORD PTR [rsp+48]
  mov r12, QWORD PTR [rsp]
  cmp QWORD PTR [rsp+24], r15
  je .L984
  mov rcx, QWORD PTR [r15+40]
  mov rsi, QWORD PTR [r15+32]
  cmp r8, rcx
  mov rdx, rcx
  cmovbe rdx, r8
  test rdx, rdx
  je .L991
  mov rdi, r12
  mov QWORD PTR [rsp+32], rcx
  mov QWORD PTR [rsp], r8
  mov QWORD PTR [rsp+40], r15
  call memcmp
  mov r8, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+32]
  mov r10, r15
  test eax, eax
  mov r9, QWORD PTR [rsp+48]
  jne .L992
.L991:
  sub r8, rcx
  cmp r8, rbp
  jge .L993
  cmp r8, r13
  jle .L984
  mov eax, r8d
.L992:
  test eax, eax
  js .L984
.L993:
  cmp BYTE PTR [r10+64], 0
  je .L1328
.L1143:
  mov rcx, QWORD PTR [rbx+136]
  lea rax, [rbx+128]
  test rcx, rcx
  je .L1147
  mov rsi, QWORD PTR [rsp+176]
  mov QWORD PTR [rsp+32], rbx
  mov r15, rax
  mov rbx, rcx
  mov QWORD PTR [rsp+24], rax
  mov r12, QWORD PTR [rsp+184]
  mov QWORD PTR [rsp], rsi
  mov QWORD PTR [rsp+40], r14
  jmp .L1001
.L998:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1329
.L1001:
  mov r14, QWORD PTR [rbx+40]
  mov rdx, r12
  mov rdi, QWORD PTR [rbx+32]
  cmp r14, r12
  cmovbe rdx, r14
  test rdx, rdx
  je .L996
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L997
.L996:
  mov r8, r14
  sub r8, r12
  cmp r8, rbp
  jge .L998
  cmp r8, r13
  jle .L999
  mov eax, r8d
.L997:
  test eax, eax
  jns .L998
.L999:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1001
.L1329:
  mov rax, QWORD PTR [rsp+24]
  mov rbx, QWORD PTR [rsp+32]
  mov r9, r15
  mov r14, QWORD PTR [rsp+40]
  cmp r15, rax
  je .L995
  mov rsi, QWORD PTR [r15+32]
  mov r15, QWORD PTR [r15+40]
  mov rdx, r12
  cmp r15, r12
  cmovbe rdx, r15
  test rdx, rdx
  je .L1002
  mov rdi, QWORD PTR [rsp]
  mov QWORD PTR [rsp+24], r9
  call memcmp
  mov r9, QWORD PTR [rsp+24]
  test eax, eax
  jne .L1003
.L1002:
  mov r8, r12
  sub r8, r15
  cmp r8, rbp
  jge .L1004
  cmp r8, -2147483648
  jl .L995
  mov eax, r8d
.L1003:
  test eax, eax
  js .L995
.L1004:
  mov rax, QWORD PTR [r9+64]
  cmp BYTE PTR [rax], 0
  je .L1005
  mov r9, QWORD PTR p[rip]
  mov r12, QWORD PTR [r9+136]
  lea rax, [r9+128]
  test r12, r12
  je .L1149
  mov r15, QWORD PTR [rsp+176]
  mov rcx, QWORD PTR [rsp+184]
  mov QWORD PTR [rsp+40], r14
  mov rbx, rax
  mov r14, r12
  mov QWORD PTR [rsp+24], r9
  mov QWORD PTR [rsp+32], rax
  mov r12, rcx
  mov QWORD PTR [rsp], r15
  jmp .L1012
.L1009:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1330
.L1012:
  mov r15, QWORD PTR [r14+40]
  mov rdx, r12
  mov rdi, QWORD PTR [r14+32]
  cmp r15, r12
  cmovbe rdx, r15
  test rdx, rdx
  je .L1007
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1008
.L1007:
  mov r8, r15
  sub r8, r12
  cmp r8, rbp
  jge .L1009
  cmp r8, r13
  jle .L1010
  mov eax, r8d
.L1008:
  test eax, eax
  jns .L1009
.L1010:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1012
.L1330:
  mov rax, QWORD PTR [rsp+32]
  mov r9, QWORD PTR [rsp+24]
  mov rcx, r12
  mov r8, rbx
  mov r15, QWORD PTR [rsp]
  mov r14, QWORD PTR [rsp+40]
  cmp rax, rbx
  je .L1006
  mov rsi, QWORD PTR [rbx+32]
  mov rbx, QWORD PTR [rbx+40]
  mov rdx, r12
  cmp rbx, r12
  cmovbe rdx, rbx
  test rdx, rdx
  je .L1013
  mov rdi, r15
  mov QWORD PTR [rsp+32], r8
  mov QWORD PTR [rsp], r9
  mov QWORD PTR [rsp+24], r12
  call memcmp
  mov r9, QWORD PTR [rsp]
  mov r8, QWORD PTR [rsp+32]
  mov rcx, r12
  test eax, eax
  jne .L1014
.L1013:
  sub rcx, rbx
  cmp rcx, rbp
  jge .L1015
  cmp rcx, -2147483648
  jl .L1006
  mov eax, ecx
.L1014:
  test eax, eax
  js .L1006
.L1015:
  mov rax, QWORD PTR [r8+64]
  jmp .L983
.L1326:
  mov rax, QWORD PTR p[rip]
  cmp QWORD PTR root[rip], rax
  je .L1331
  mov rax, QWORD PTR [rax+168]
.L983:
  mov QWORD PTR p[rip], rax
  lea rax, [rsp+192]
  cmp r15, rax
  je .L977
  mov rax, QWORD PTR [rsp+192]
  mov rdi, r15
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L977:
  add r14, 32
  cmp QWORD PTR [rsp+8], r14
  jne .L1119
  cmp BYTE PTR [rsp+64], 0
  je .L1121
  mov edx, 2
  mov esi, OFFSET FLAT:.LC15
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L1294
  cmp BYTE PTR [rbx+56], 0
  je .L1130
.L1341:
  movsx esi, BYTE PTR [rbx+67]
.L1125:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rax, QWORD PTR [rsp+72]
  mov rsi, QWORD PTR [rsp+8]
  mov rbp, QWORD PTR [rsp+8]
  mov rbx, rax
  cmp rax, rsi
  je .L1134
.L1126:
  mov rdi, QWORD PTR [rbx]
  lea rax, [rbx+16]
  cmp rdi, rax
  je .L1133
  mov rax, QWORD PTR [rbx+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1133:
  add rbx, 32
  cmp rbp, rbx
  jne .L1126
.L1134:
  cmp QWORD PTR [rsp+72], 0
  mov rsi, QWORD PTR [rsp+160]
  je .L955
  mov rdi, QWORD PTR [rsp+72]
.L1308:
  add rsp, 280
  sub rsi, rdi
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  pop r15
  jmp operator delete(void*, unsigned long)
.L1325:
  mov rdi, QWORD PTR [rsp+176]
  cmp BYTE PTR [rdi], 46
  jne .L973
  lea rax, [rsp+192]
  cmp rdi, rax
  je .L977
  mov rax, QWORD PTR [rsp+192]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
  jmp .L977
.L1146:
  mov r10, QWORD PTR [rsp+24]
.L984:
  lea rax, [rsp+176]
  lea rdi, [rbx+72]
  mov rsi, r10
  lea rdx, [rsp+80]
  mov QWORD PTR [rsp+80], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  cmp BYTE PTR [rax+64], 0
  mov rbx, QWORD PTR p[rip]
  jne .L1143
  mov r9, QWORD PTR [rbx+88]
  lea r15, [rbx+80]
  test r9, r9
  je .L1151
  mov r12, QWORD PTR [rsp+176]
.L1142:
  mov rcx, QWORD PTR [rsp+184]
  mov QWORD PTR [rsp+32], rbx
  mov rbx, r9
  mov QWORD PTR [rsp+40], r14
  mov QWORD PTR [rsp+24], r15
  mov r14, rcx
  mov QWORD PTR [rsp], r12
  jmp .L1025
.L1022:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1332
.L1025:
  mov r12, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r12, r14
  cmovbe rdx, r12
  test rdx, rdx
  je .L1020
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1021
.L1020:
  mov r8, r12
  sub r8, r14
  cmp r8, rbp
  jge .L1022
  cmp r8, r13
  jle .L1023
  mov eax, r8d
.L1021:
  test eax, eax
  jns .L1022
.L1023:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1025
.L1332:
  mov r8, r15
  mov r15, QWORD PTR [rsp+24]
  mov rcx, r14
  mov rbx, QWORD PTR [rsp+32]
  mov r14, QWORD PTR [rsp+40]
  mov r12, QWORD PTR [rsp]
  cmp r8, r15
  je .L1019
  mov r15, QWORD PTR [r8+40]
  mov rdx, rcx
  mov rsi, QWORD PTR [r8+32]
  cmp r15, rcx
  cmovbe rdx, r15
  test rdx, rdx
  je .L1026
  mov rdi, r12
  mov QWORD PTR [rsp+24], rcx
  mov QWORD PTR [rsp], r8
  call memcmp
  mov r8, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+24]
  test eax, eax
  jne .L1027
.L1026:
  sub rcx, r15
  cmp rcx, rbp
  jge .L1028
  cmp rcx, -2147483648
  jl .L1019
  mov eax, ecx
.L1027:
  test eax, eax
  js .L1019
.L1028:
  mov BYTE PTR [r8+64], 1
  mov edi, 176
  call operator new(unsigned long)
  mov r9, rax
  lea rax, [rax+24]
  mov QWORD PTR [r9+8], rax
  lea rax, [r9+56]
  mov QWORD PTR [r9+40], rax
  lea rax, [r9+80]
  mov QWORD PTR [r9+96], rax
  mov QWORD PTR [r9+104], rax
  lea rax, [r9+128]
  mov QWORD PTR [r9+144], rax
  mov QWORD PTR [r9+152], rax
  mov rax, QWORD PTR p[rip]
  mov BYTE PTR [r9+24], 0
  mov BYTE PTR [r9+56], 0
  lea rcx, [rax+128]
  mov QWORD PTR [r9+88], 0
  mov QWORD PTR [r9+136], 0
  mov r15, QWORD PTR [rax+136]
  mov QWORD PTR [r9+16], 0
  mov QWORD PTR [r9+48], 0
  mov DWORD PTR [r9+80], 0
  mov QWORD PTR [r9+112], 0
  mov DWORD PTR [r9+128], 0
  mov QWORD PTR [r9+160], 0
  mov QWORD PTR [rsp+32], rax
  mov QWORD PTR [rsp+24], rcx
  test r15, r15
  je .L1153
  mov rbx, QWORD PTR [rsp+184]
  mov r12, QWORD PTR [rsp+176]
  mov QWORD PTR [rsp+48], r15
  mov QWORD PTR [rsp+64], r14
  mov r14, r15
  mov QWORD PTR [rsp+40], r9
  mov r15, rbx
  mov rbx, rcx
  mov QWORD PTR [rsp], r12
  jmp .L1035
.L1032:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1333
.L1035:
  mov r12, QWORD PTR [r14+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r14+32]
  cmp r12, r15
  cmovbe rdx, r12
  test rdx, rdx
  je .L1030
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1031
.L1030:
  mov rcx, r12
  sub rcx, r15
  cmp rcx, rbp
  jge .L1032
  cmp rcx, r13
  jle .L1033
  mov eax, ecx
.L1031:
  test eax, eax
  jns .L1032
.L1033:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1035
.L1333:
  mov rax, QWORD PTR [rsp+24]
  mov rcx, rbx
  mov r12, QWORD PTR [rsp]
  mov rbx, r15
  mov r9, QWORD PTR [rsp+40]
  mov r14, QWORD PTR [rsp+64]
  mov r15, QWORD PTR [rsp+48]
  cmp rcx, rax
  je .L1029
  mov r8, QWORD PTR [rcx+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [rcx+32]
  cmp r8, rbx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1036
  mov rdi, r12
  mov QWORD PTR [rsp+48], r8
  mov QWORD PTR [rsp+40], rcx
  mov QWORD PTR [rsp], r9
  call memcmp
  mov r9, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+40]
  test eax, eax
  mov r8, QWORD PTR [rsp+48]
  jne .L1037
.L1036:
  mov rax, rbx
  sub rax, r8
  cmp rax, rbp
  jge .L1038
  cmp rax, -2147483648
  jl .L1029
.L1037:
  test eax, eax
  js .L1029
.L1038:
  mov QWORD PTR [rcx+64], r9
.L1141:
  mov r9, QWORD PTR [rsp+24]
  mov QWORD PTR [rsp+40], r15
  mov QWORD PTR [rsp+48], r14
  mov r14, r15
  mov r15, rbx
  mov QWORD PTR [rsp], r12
  mov rbx, r9
  jmp .L1045
.L1042:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1334
.L1045:
  mov r12, QWORD PTR [r14+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r14+32]
  cmp r12, r15
  cmovbe rdx, r12
  test rdx, rdx
  je .L1040
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1041
.L1040:
  mov rcx, r12
  sub rcx, r15
  cmp rcx, rbp
  jge .L1042
  cmp rcx, r13
  jle .L1043
  mov eax, ecx
.L1041:
  test eax, eax
  jns .L1042
.L1043:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1045
.L1334:
  mov rax, QWORD PTR [rsp+24]
  mov r9, rbx
  mov r14, QWORD PTR [rsp+48]
  mov rbx, r15
  mov r12, QWORD PTR [rsp]
  mov r15, QWORD PTR [rsp+40]
  cmp r9, rax
  je .L1039
  mov r8, QWORD PTR [r9+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [r9+32]
  cmp r8, rbx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1046
  mov rdi, r12
  mov QWORD PTR [rsp+40], r8
  mov QWORD PTR [rsp], r9
  call memcmp
  mov r9, QWORD PTR [rsp]
  mov r8, QWORD PTR [rsp+40]
  test eax, eax
  jne .L1047
.L1046:
  mov rax, rbx
  sub rax, r8
  cmp rax, rbp
  jge .L1048
  cmp rax, -2147483648
  jl .L1039
.L1047:
  test eax, eax
  js .L1039
.L1048:
  mov rax, QWORD PTR [r9+64]
  mov BYTE PTR [rax], 1
  mov rax, QWORD PTR [rsp+24]
.L1140:
  mov QWORD PTR [rsp+40], r14
  mov r14, rbx
  mov rbx, r15
  mov r15, rax
  mov QWORD PTR [rsp+24], rax
  mov QWORD PTR [rsp], r12
  jmp .L1055
.L1052:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1335
.L1055:
  mov r12, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r12, r14
  cmovbe rdx, r12
  test rdx, rdx
  je .L1050
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1051
.L1050:
  mov rcx, r12
  sub rcx, r14
  cmp rcx, rbp
  jge .L1052
  cmp rcx, r13
  jle .L1053
  mov eax, ecx
.L1051:
  test eax, eax
  jns .L1052
.L1053:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1055
.L1335:
  mov rax, QWORD PTR [rsp+24]
  mov rbx, r14
  mov r12, QWORD PTR [rsp]
  mov r8, r15
  mov r14, QWORD PTR [rsp+40]
  cmp r15, rax
  je .L1049
  mov rsi, QWORD PTR [r15+32]
  mov r15, QWORD PTR [r15+40]
  mov rdx, rbx
  cmp r15, rbx
  cmovbe rdx, r15
  test rdx, rdx
  je .L1056
  mov rdi, r12
  mov QWORD PTR [rsp], r8
  call memcmp
  mov r8, QWORD PTR [rsp]
  test eax, eax
  jne .L1057
.L1056:
  mov rax, rbx
  sub rax, r15
  cmp rax, rbp
  jge .L1058
  cmp rax, -2147483648
  jl .L1049
.L1057:
  test eax, eax
  js .L1049
.L1058:
  mov rdi, QWORD PTR [r8+64]
  lea rsi, [rsp+176]
  add rdi, 8
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_assign(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov rax, QWORD PTR p[rip]
  mov rbx, QWORD PTR [rsp+184]
  lea rdi, [rsp+208]
  mov r12, QWORD PTR [rsp+176]
  mov rdx, QWORD PTR [rax+48]
  mov r15, QWORD PTR [rax+40]
  lea rax, [rsp+224]
  mov QWORD PTR [rsp+216], 0
  mov QWORD PTR [rsp+208], rax
  lea rsi, [rdx+rbx]
  mov BYTE PTR [rsp+224], 0
  mov QWORD PTR [rsp], rdx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  mov rdx, QWORD PTR [rsp]
  sub rax, QWORD PTR [rsp+216]
  cmp rax, rdx
  jb .L1290
  mov rsi, r15
  lea rdi, [rsp+208]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+216]
  cmp rax, rbx
  jb .L1291
  mov rdx, rbx
  mov rsi, r12
  lea rdi, [rsp+208]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  cmp QWORD PTR [rsp+216], rax
  je .L1292
  mov edx, 1
  mov esi, OFFSET FLAT:.LC1
  lea rdi, [rsp+208]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rsi, QWORD PTR [rsp+16]
  lea rcx, [rax+16]
  mov QWORD PTR [rsp+240], rsi
  mov rdx, QWORD PTR [rax]
  mov rsi, QWORD PTR [rax+8]
  cmp rdx, rcx
  je .L1336
  mov QWORD PTR [rsp+240], rdx
  mov rdx, QWORD PTR [rax+16]
  mov QWORD PTR [rsp+256], rdx
.L1072:
  mov rdx, QWORD PTR [rax+8]
  mov r9, QWORD PTR p[rip]
  mov QWORD PTR [rsp+248], rdx
  mov BYTE PTR [rax+16], 0
  mov r15, QWORD PTR [r9+136]
  mov QWORD PTR [rax], rcx
  mov QWORD PTR [rax+8], 0
  lea rax, [r9+128]
  test r15, r15
  je .L1159
  mov rbx, QWORD PTR [rsp+184]
  mov rsi, QWORD PTR [rsp+176]
  mov QWORD PTR [rsp+40], r14
  mov r12, rax
  mov QWORD PTR [rsp+24], r9
  mov r14, rbx
  mov QWORD PTR [rsp], rsi
  mov rbx, r15
  mov QWORD PTR [rsp+32], rax
  jmp .L1079
.L1076:
  mov r12, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1337
.L1079:
  mov r15, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r15, r14
  cmovbe rdx, r15
  test rdx, rdx
  je .L1074
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1075
.L1074:
  mov rcx, r15
  sub rcx, r14
  cmp rcx, rbp
  jge .L1076
  cmp rcx, r13
  jle .L1077
  mov eax, ecx
.L1075:
  test eax, eax
  jns .L1076
.L1077:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1079
.L1337:
  mov rax, QWORD PTR [rsp+32]
  mov rbx, r14
  mov r9, QWORD PTR [rsp+24]
  mov r8, r12
  mov r14, QWORD PTR [rsp+40]
  cmp r12, rax
  je .L1073
  mov rsi, QWORD PTR [r12+32]
  mov r12, QWORD PTR [r12+40]
  mov rdx, rbx
  cmp r12, rbx
  cmovbe rdx, r12
  test rdx, rdx
  je .L1080
  mov rdi, QWORD PTR [rsp]
  mov QWORD PTR [rsp+32], r9
  mov QWORD PTR [rsp+24], r8
  call memcmp
  mov r8, QWORD PTR [rsp+24]
  mov r9, QWORD PTR [rsp+32]
  test eax, eax
  jne .L1081
.L1080:
  mov rcx, rbx
  sub rcx, r12
  cmp rcx, rbp
  jge .L1082
  cmp rcx, -2147483648
  jl .L1073
  mov eax, ecx
.L1081:
  test eax, eax
  js .L1073
.L1082:
  mov rbx, QWORD PTR [r8+64]
  mov rax, QWORD PTR [rsp+240]
  mov rdx, QWORD PTR [rsp+248]
  mov rsi, QWORD PTR [rsp+16]
  mov rdi, QWORD PTR [rbx+40]
  lea rcx, [rbx+56]
  cmp rdi, rcx
  je .L1338
  cmp rax, rsi
  je .L1084
  mov QWORD PTR [rbx+40], rax
  movq xmm0, rdx
  mov rcx, QWORD PTR [rbx+56]
  movhps xmm0, QWORD PTR [rsp+256]
  movups XMMWORD PTR [rbx+48], xmm0
  test rdi, rdi
  je .L1090
  mov QWORD PTR [rsp+240], rdi
  mov QWORD PTR [rsp+256], rcx
.L1087:
  mov QWORD PTR [rsp+248], 0
  mov rax, QWORD PTR [rsp+16]
  mov BYTE PTR [rdi], 0
  mov rdi, QWORD PTR [rsp+240]
  cmp rdi, rax
  je .L1091
  mov rax, QWORD PTR [rsp+256]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1091:
  mov rdi, QWORD PTR [rsp+208]
  lea rax, [rsp+224]
  cmp rdi, rax
  je .L1092
  mov rax, QWORD PTR [rsp+224]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1092:
  mov r10, QWORD PTR p[rip]
  mov rcx, QWORD PTR [r10+136]
  lea rax, [r10+128]
  mov QWORD PTR [rsp+24], rax
  test rcx, rcx
  je .L1162
  mov rbx, QWORD PTR [rsp+184]
  mov r12, QWORD PTR [rsp+176]
  mov QWORD PTR [rsp+48], r14
  mov r15, rax
  mov QWORD PTR [rsp+32], rcx
  mov r14, rbx
  mov QWORD PTR [rsp+40], r10
  mov rbx, rcx
  mov QWORD PTR [rsp], r12
  jmp .L1099
.L1096:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1339
.L1099:
  mov r12, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r12, r14
  cmovbe rdx, r12
  test rdx, rdx
  je .L1094
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1095
.L1094:
  mov rcx, r12
  sub rcx, r14
  cmp rcx, rbp
  jge .L1096
  cmp rcx, r13
  jle .L1097
  mov eax, ecx
.L1095:
  test eax, eax
  jns .L1096
.L1097:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1099
.L1339:
  mov rax, QWORD PTR [rsp+24]
  mov rbx, r14
  mov rcx, QWORD PTR [rsp+32]
  mov r9, r15
  mov r10, QWORD PTR [rsp+40]
  mov r12, QWORD PTR [rsp]
  mov r14, QWORD PTR [rsp+48]
  cmp r15, rax
  je .L1093
  mov r8, QWORD PTR [r15+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [r15+32]
  cmp r8, rbx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1100
  mov rdi, r12
  mov QWORD PTR [rsp+48], r8
  mov QWORD PTR [rsp], rcx
  mov QWORD PTR [rsp+32], r15
  call memcmp
  mov rcx, QWORD PTR [rsp]
  mov r10, QWORD PTR [rsp+40]
  mov r9, r15
  test eax, eax
  mov r8, QWORD PTR [rsp+48]
  jne .L1101
.L1100:
  mov rax, rbx
  sub rax, r8
  cmp rax, rbp
  jge .L1102
  cmp rax, -2147483648
  jl .L1093
.L1101:
  test eax, eax
  js .L1093
.L1102:
  mov rax, QWORD PTR [r9+64]
  mov QWORD PTR [rax+168], r10
  mov rax, QWORD PTR [rsp+24]
.L1139:
  mov QWORD PTR [rsp+48], r14
  mov r15, rbx
  mov r14, rcx
  mov rbx, rax
  mov QWORD PTR [rsp+24], rax
  mov QWORD PTR [rsp+32], r12
  mov QWORD PTR [rsp+40], r10
  mov QWORD PTR [rsp], r12
  jmp .L1109
.L1106:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1340
.L1109:
  mov r12, QWORD PTR [r14+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r14+32]
  cmp r12, r15
  cmovbe rdx, r12
  test rdx, rdx
  je .L1104
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1105
.L1104:
  mov r8, r12
  sub r8, r15
  cmp r8, rbp
  jge .L1106
  cmp r8, r13
  jle .L1107
  mov eax, r8d
.L1105:
  test eax, eax
  jns .L1106
.L1107:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1109
.L1340:
  mov rax, QWORD PTR [rsp+24]
  mov r8, rbx
  mov r12, QWORD PTR [rsp]
  mov rbx, r15
  mov r10, QWORD PTR [rsp+40]
  mov r14, QWORD PTR [rsp+48]
  mov r15, QWORD PTR [rsp+32]
  cmp rax, r8
  je .L1103
  mov rcx, QWORD PTR [r8+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [r8+32]
  cmp rcx, rbx
  cmovbe rdx, rcx
  test rdx, rdx
  je .L1110
  mov rdi, r12
  mov QWORD PTR [rsp+32], rcx
  mov QWORD PTR [rsp+24], r8
  mov QWORD PTR [rsp], r10
  call memcmp
  mov r10, QWORD PTR [rsp]
  mov r8, QWORD PTR [rsp+24]
  test eax, eax
  mov rcx, QWORD PTR [rsp+32]
  jne .L1111
.L1110:
  mov rax, rbx
  sub rax, rcx
  cmp rax, rbp
  jge .L1112
  cmp rax, -2147483648
  jl .L1103
.L1111:
  test eax, eax
  js .L1103
.L1112:
  mov BYTE PTR [rsp+64], 1
  mov rax, QWORD PTR [r8+64]
  jmp .L983
.L1147:
  mov r9, rax
.L995:
  lea rax, [rsp+176]
  lea rdi, [rbx+120]
  mov rsi, r9
  lea rdx, [rsp+88]
  mov QWORD PTR [rsp+88], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r9, rax
  jmp .L1004
.L1164:
  mov r8, rax
.L1103:
  mov rdx, QWORD PTR [rsp+56]
  lea rax, [rsp+176]
  lea rdi, [r10+120]
  mov rsi, r8
  mov QWORD PTR [rsp+240], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r15, QWORD PTR [rsp+176]
  mov r8, rax
  jmp .L1112
.L1162:
  mov r9, QWORD PTR [rsp+24]
.L1093:
  lea rax, [rsp+176]
  lea rdi, [r10+120]
  mov rsi, r9
  lea rdx, [rsp+208]
  mov QWORD PTR [rsp+208], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r10, QWORD PTR p[rip]
  mov rax, QWORD PTR [rax+64]
  mov rcx, QWORD PTR [r10+136]
  mov QWORD PTR [rax+168], r10
  lea rax, [r10+128]
  test rcx, rcx
  je .L1164
  mov r12, QWORD PTR [rsp+176]
  mov rbx, QWORD PTR [rsp+184]
  jmp .L1139
.L1153:
  mov rcx, QWORD PTR [rsp+24]
.L1029:
  mov rdi, QWORD PTR [rsp+32]
  lea rdx, [rsp+112]
  mov rsi, rcx
  mov QWORD PTR [rsp], r9
  lea rax, [rsp+176]
  add rdi, 120
  mov QWORD PTR [rsp+112], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov rsi, QWORD PTR p[rip]
  mov r9, QWORD PTR [rsp]
  mov r15, QWORD PTR [rsi+136]
  mov QWORD PTR [rax+64], r9
  lea rax, [rsi+128]
  mov QWORD PTR [rsp+32], rsi
  mov QWORD PTR [rsp+24], rax
  test r15, r15
  je .L1155
  mov r12, QWORD PTR [rsp+176]
  mov rbx, QWORD PTR [rsp+184]
  jmp .L1141
.L1151:
  mov r8, r15
.L1019:
  lea rax, [rsp+176]
  lea rdi, [rbx+72]
  mov rsi, r8
  lea rdx, [rsp+104]
  mov QWORD PTR [rsp+104], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r8, rax
  jmp .L1028
.L1159:
  mov r8, rax
.L1073:
  lea rax, [rsp+176]
  lea rdi, [r9+120]
  mov rsi, r8
  lea rdx, [rsp+136]
  mov QWORD PTR [rsp+136], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r8, rax
  jmp .L1082
.L1157:
  mov r8, rax
.L1049:
  mov rdi, QWORD PTR [rsp+32]
  lea rax, [rsp+176]
  lea rdx, [rsp+128]
  mov rsi, r8
  mov QWORD PTR [rsp+128], rax
  add rdi, 120
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r8, rax
  jmp .L1058
.L1155:
  mov r9, QWORD PTR [rsp+24]
.L1039:
  mov rdi, QWORD PTR [rsp+32]
  lea rax, [rsp+176]
  lea rdx, [rsp+120]
  mov rsi, r9
  mov QWORD PTR [rsp+120], rax
  add rdi, 120
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov rsi, QWORD PTR p[rip]
  mov rax, QWORD PTR [rax+64]
  mov r15, QWORD PTR [rsi+136]
  mov QWORD PTR [rsp+32], rsi
  mov BYTE PTR [rax], 1
  lea rax, [rsi+128]
  test r15, r15
  je .L1157
  mov r12, QWORD PTR [rsp+176]
  mov rbx, QWORD PTR [rsp+184]
  jmp .L1140
.L1149:
  mov r8, rax
.L1006:
  lea rax, [rsp+176]
  lea rdi, [r9+120]
  mov rsi, r8
  lea rdx, [rsp+96]
  mov QWORD PTR [rsp+96], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r15, QWORD PTR [rsp+176]
  mov r8, rax
  jmp .L1015
.L1338:
  cmp rax, rsi
  je .L1084
  mov QWORD PTR [rbx+40], rax
  movq xmm0, rdx
  movhps xmm0, QWORD PTR [rsp+256]
  movups XMMWORD PTR [rbx+48], xmm0
.L1090:
  mov rax, QWORD PTR [rsp+16]
  mov QWORD PTR [rsp+240], rax
  lea rax, [rsp+256]
  mov QWORD PTR [rsp+16], rax
  mov rdi, rax
  jmp .L1087
.L1121:
  mov edx, 3
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L1293
  cmp BYTE PTR [rbx+56], 0
  jne .L1341
.L1130:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L1125
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L1125
.L1328:
  mov r15, QWORD PTR [rsp+24]
  jmp .L1142
.L1295:
  mov rax, QWORD PTR now[rip]
  lea rdi, [rsp+240]
  mov QWORD PTR [rsp+56], rdi
  mov r14, QWORD PTR [rax+48]
  mov r13, QWORD PTR [rax+40]
  lea rax, [rsp+256]
  mov QWORD PTR [rsp+248], 0
  mov QWORD PTR [rsp+16], rax
  lea rsi, [r14+r12]
  mov QWORD PTR [rsp+240], rax
  mov BYTE PTR [rsp+256], 0
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+248]
  cmp rax, r14
  jb .L1286
  mov rdi, QWORD PTR [rsp+56]
  mov rdx, r14
  mov rsi, r13
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+248]
  cmp rax, r12
  jb .L1287
  mov rdi, QWORD PTR [rsp+56]
  mov rdx, r12
  mov rsi, rbp
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rdi, QWORD PTR [rbx]
  lea rcx, [rbx+16]
  mov rdx, QWORD PTR [rsp+248]
  mov rax, QWORD PTR [rsp+240]
  mov rsi, QWORD PTR [rsp+16]
  cmp rdi, rcx
  je .L1342
  cmp rax, rsi
  je .L962
  movq xmm0, rdx
  mov rcx, QWORD PTR [rbx+16]
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+256]
  movups XMMWORD PTR [rbx+8], xmm0
  test rdi, rdi
  je .L968
  mov QWORD PTR [rsp+240], rdi
  mov QWORD PTR [rsp+256], rcx
.L967:
  mov QWORD PTR [rsp+248], 0
  mov rax, QWORD PTR [rsp+16]
  mov BYTE PTR [rdi], 0
  mov rdi, QWORD PTR [rsp+240]
  cmp rdi, rax
  je .L969
  mov rax, QWORD PTR [rsp+256]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L969:
  mov rbp, QWORD PTR [rbx]
  jmp .L956
.L1331:
  mov edx, 3
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L1288
.L1016:
  cmp BYTE PTR [rbx+56], 0
  je .L1017
  movsx esi, BYTE PTR [rbx+67]
.L1018:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rdi, QWORD PTR [rsp+176]
  lea rax, [rsp+192]
  cmp rdi, rax
  je .L1114
  mov rax, QWORD PTR [rsp+192]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1114:
  mov rbx, QWORD PTR [rsp+72]
  mov rbp, QWORD PTR [rsp+8]
.L1116:
  mov rdi, QWORD PTR [rbx]
  lea rax, [rbx+16]
  cmp rdi, rax
  je .L1115
  mov rax, QWORD PTR [rbx+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1115:
  add rbx, 32
  cmp rbp, rbx
  jne .L1116
  mov rdi, QWORD PTR [rsp+72]
  mov rsi, QWORD PTR [rsp+160]
  test rdi, rdi
  jne .L1308
.L955:
  add rsp, 280
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  pop r15
  ret
.L1084:
  lea rcx, [rbx+40]
  cmp QWORD PTR [rsp+56], rcx
  je .L1161
  test rdx, rdx
  je .L1088
  cmp rdx, 1
  je .L1343
  mov rsi, QWORD PTR [rsp+16]
  call memcpy
  mov rdx, QWORD PTR [rsp+248]
  mov rdi, QWORD PTR [rbx+40]
.L1088:
  mov QWORD PTR [rbx+48], rdx
  mov BYTE PTR [rdi+rdx], 0
  mov rdi, QWORD PTR [rsp+240]
  jmp .L1087
.L1336:
  mov r10, QWORD PTR [rsp+16]
  add rsi, 1
  mov rdx, rcx
  mov r8, r10
  cmp esi, 8
  jnb .L1344
.L1066:
  xor edi, edi
  test sil, 4
  jne .L1345
  test sil, 2
  jne .L1346
.L1070:
  and esi, 1
  je .L1072
.L1347:
  movzx edx, BYTE PTR [rdx+rdi]
  mov BYTE PTR [r8+rdi], dl
  jmp .L1072
.L1345:
  mov edi, DWORD PTR [rdx]
  mov DWORD PTR [r8], edi
  mov edi, 4
  test sil, 2
  je .L1070
.L1346:
  movzx r9d, WORD PTR [rdx+rdi]
  mov WORD PTR [r8+rdi], r9w
  add rdi, 2
  and esi, 1
  je .L1072
  jmp .L1347
.L1017:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L1018
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L1018
.L1344:
  mov r9d, esi
  xor edx, edx
  and r9d, -8
.L1067:
  mov edi, edx
  add edx, 8
  mov r8, QWORD PTR [rcx+rdi]
  mov QWORD PTR [r10+rdi], r8
  cmp edx, r9d
  jb .L1067
  mov rdi, QWORD PTR [rsp+16]
  lea r8, [rdi+rdx]
  add rdx, rcx
  jmp .L1066
.L1342:
  cmp rax, rsi
  je .L962
  movq xmm0, rdx
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+256]
  movups XMMWORD PTR [rbx+8], xmm0
.L968:
  mov rax, QWORD PTR [rsp+16]
  mov QWORD PTR [rsp+240], rax
  lea rax, [rsp+256]
  mov QWORD PTR [rsp+16], rax
  mov rdi, rax
  jmp .L967
.L962:
  test rdx, rdx
  je .L965
  cmp rdx, 1
  je .L1348
  mov rsi, QWORD PTR [rsp+16]
  call memcpy
  mov rdx, QWORD PTR [rsp+248]
  mov rdi, QWORD PTR [rbx]
.L965:
  mov QWORD PTR [rbx+8], rdx
  mov BYTE PTR [rdi+rdx], 0
  mov rdi, QWORD PTR [rsp+240]
  jmp .L967
.L1005:
  mov edx, 3
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  jne .L1016
  jmp .L1289
.L1343:
  movzx eax, BYTE PTR [rsp+256]
  mov BYTE PTR [rdi], al
  mov rdx, QWORD PTR [rsp+248]
  mov rdi, QWORD PTR [rbx+40]
  jmp .L1088
.L1161:
  mov rdi, rax
  jmp .L1087
.L1348:
  movzx eax, BYTE PTR [rsp+256]
  mov BYTE PTR [rdi], al
  mov rdx, QWORD PTR [rsp+248]
  mov rdi, QWORD PTR [rbx]
  jmp .L965
  jmp .L1277
  jmp .L1283
  jmp .L1279
  mov rbx, rax
  jmp .L1135
  jmp .L1281
  mov rbx, rax
  jmp .L1136
  jmp .L1279
mkdir(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) [clone .cold]:
.L1289:
  call std::__throw_bad_cast()
.L1277:
  mov rbx, rax
.L1063:
  lea rdi, [rsp+176]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
.L1138:
  lea rdi, [rsp+144]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  mov rdi, rbx
  call _Unwind_Resume
.L1287:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1288:
  call std::__throw_bad_cast()
.L1283:
  mov rdi, QWORD PTR [rsp+56]
  mov rbx, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
.L1294:
  call std::__throw_bad_cast()
.L1293:
  call std::__throw_bad_cast()
.L1286:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1281:
  mov rbx, rax
  jmp .L1138
.L1292:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1290:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1279:
  mov rbx, rax
  jmp .L1137
.L1136:
  mov rdi, QWORD PTR [rsp+56]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
.L1137:
  lea rdi, [rsp+208]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L1063
.L1291:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1135:
  mov rdi, QWORD PTR [rsp+56]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
  jmp .L1279
touch(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push r15
  push r14
  push r13
  push r12
  push rbp
  push rbx
  mov rbx, rdi
  sub rsp, 296
  mov rbp, QWORD PTR [rdi]
  mov r12, QWORD PTR [rdi+8]
  cmp BYTE PTR [rbp+0], 47
  jne .L1710
  lea rax, [rsp+256]
  mov QWORD PTR [rsp+64], rax
  lea rax, [rsp+272]
  mov QWORD PTR [rsp+16], rax
.L1350:
  mov rdx, QWORD PTR [rbx+8]
  mov rbx, QWORD PTR [rsp+64]
  mov rsi, rbp
  mov r15, QWORD PTR [rsp+16]
  mov rdi, rbx
  add rdx, rbp
  mov QWORD PTR [rsp+256], r15
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rsi, rbx
  lea rdi, [rsp+160]
  call cut(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+256]
  cmp rdi, r15
  je .L1364
  mov rax, QWORD PTR [rsp+272]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1364:
  mov rax, QWORD PTR root[rip]
  mov rsi, QWORD PTR [rsp+168]
  mov QWORD PTR p[rip], rax
  mov rax, QWORD PTR [rsp+160]
  mov QWORD PTR [rsp+8], rsi
  mov QWORD PTR [rsp+72], rax
  cmp rax, rsi
  je .L1514
  mov BYTE PTR [rsp+56], 0
  mov r14, rax
  mov ebp, 2147483648
  movabs r13, -2147483649
.L1512:
  lea rax, [rsp+208]
  mov rdx, QWORD PTR [r14+8]
  lea rdi, [rsp+192]
  mov QWORD PTR [rsp+192], rax
  mov rsi, QWORD PTR [r14]
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov r8, QWORD PTR [rsp+200]
  cmp r8, 1
  je .L1730
  cmp r8, 2
  jne .L1367
  mov r15, QWORD PTR [rsp+192]
  cmp WORD PTR [r15], 11822
  je .L1731
.L1367:
  mov rbx, QWORD PTR p[rip]
  mov r9, QWORD PTR [rbx+88]
  lea rax, [rbx+80]
  mov QWORD PTR [rsp+24], rax
  test r9, r9
  je .L1551
  mov r12, QWORD PTR [rsp+192]
  mov QWORD PTR [rsp+32], rbx
  mov r15, rax
  mov rbx, r8
  mov QWORD PTR [rsp+40], r14
  mov r14, r9
  mov QWORD PTR [rsp+48], r9
  mov QWORD PTR [rsp], r12
  jmp .L1384
.L1381:
  mov r15, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1732
.L1384:
  mov r12, QWORD PTR [r14+40]
  mov rdi, QWORD PTR [r14+32]
  cmp rbx, r12
  mov rdx, r12
  cmovbe rdx, rbx
  test rdx, rdx
  je .L1379
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1380
.L1379:
  mov rcx, r12
  sub rcx, rbx
  cmp rcx, rbp
  jge .L1381
  cmp rcx, r13
  jle .L1382
  mov eax, ecx
.L1380:
  test eax, eax
  jns .L1381
.L1382:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1384
.L1732:
  mov rax, QWORD PTR [rsp+24]
  mov r8, rbx
  mov r14, QWORD PTR [rsp+40]
  mov r10, r15
  mov rbx, QWORD PTR [rsp+32]
  mov r9, QWORD PTR [rsp+48]
  mov r12, QWORD PTR [rsp]
  cmp r15, rax
  je .L1378
  mov rcx, QWORD PTR [r15+40]
  mov rsi, QWORD PTR [r15+32]
  cmp r8, rcx
  mov rdx, rcx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1385
  mov rdi, r12
  mov QWORD PTR [rsp+40], rcx
  mov QWORD PTR [rsp], r8
  mov QWORD PTR [rsp+32], r15
  call memcmp
  mov r8, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+40]
  mov r10, r15
  test eax, eax
  mov r9, QWORD PTR [rsp+48]
  jne .L1386
.L1385:
  sub r8, rcx
  cmp r8, rbp
  jge .L1387
  cmp r8, r13
  jle .L1378
  mov eax, r8d
.L1386:
  test eax, eax
  js .L1378
.L1387:
  cmp BYTE PTR [r10+64], 0
  je .L1733
.L1548:
  mov rcx, QWORD PTR [rbx+136]
  lea rax, [rbx+128]
  test rcx, rcx
  je .L1553
  mov rsi, QWORD PTR [rsp+192]
  mov QWORD PTR [rsp+32], rbx
  mov r15, rax
  mov rbx, rcx
  mov QWORD PTR [rsp+24], rax
  mov r12, QWORD PTR [rsp+200]
  mov QWORD PTR [rsp], rsi
  mov QWORD PTR [rsp+40], r14
  jmp .L1395
.L1392:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1734
.L1395:
  mov r14, QWORD PTR [rbx+40]
  mov rdx, r12
  mov rdi, QWORD PTR [rbx+32]
  cmp r14, r12
  cmovbe rdx, r14
  test rdx, rdx
  je .L1390
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1391
.L1390:
  mov r8, r14
  sub r8, r12
  cmp r8, rbp
  jge .L1392
  cmp r8, r13
  jle .L1393
  mov eax, r8d
.L1391:
  test eax, eax
  jns .L1392
.L1393:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1395
.L1734:
  mov rax, QWORD PTR [rsp+24]
  mov rbx, QWORD PTR [rsp+32]
  mov r9, r15
  mov r14, QWORD PTR [rsp+40]
  cmp r15, rax
  je .L1389
  mov rsi, QWORD PTR [r15+32]
  mov r15, QWORD PTR [r15+40]
  mov rdx, r12
  cmp r15, r12
  cmovbe rdx, r15
  test rdx, rdx
  je .L1396
  mov rdi, QWORD PTR [rsp]
  mov QWORD PTR [rsp+24], r9
  call memcmp
  mov r9, QWORD PTR [rsp+24]
  test eax, eax
  jne .L1397
.L1396:
  mov r8, r12
  sub r8, r15
  cmp r8, rbp
  jge .L1398
  cmp r8, -2147483648
  jl .L1389
  mov eax, r8d
.L1397:
  test eax, eax
  js .L1389
.L1398:
  mov rax, QWORD PTR [r9+64]
  cmp BYTE PTR [rax], 0
  je .L1399
  mov r9, QWORD PTR p[rip]
  mov r12, QWORD PTR [r9+136]
  lea rax, [r9+128]
  test r12, r12
  je .L1555
  mov r15, QWORD PTR [rsp+192]
  mov rcx, QWORD PTR [rsp+200]
  mov QWORD PTR [rsp+40], r14
  mov rbx, rax
  mov QWORD PTR [rsp+24], r9
  mov QWORD PTR [rsp+32], rax
  mov r14, rcx
  mov QWORD PTR [rsp], r15
  jmp .L1406
.L1403:
  mov rbx, r12
  mov r12, QWORD PTR [r12+16]
  test r12, r12
  je .L1735
.L1406:
  mov r15, QWORD PTR [r12+40]
  mov rdx, r14
  mov rdi, QWORD PTR [r12+32]
  cmp r15, r14
  cmovbe rdx, r15
  test rdx, rdx
  je .L1401
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1402
.L1401:
  mov r8, r15
  sub r8, r14
  cmp r8, rbp
  jge .L1403
  cmp r8, r13
  jle .L1404
  mov eax, r8d
.L1402:
  test eax, eax
  jns .L1403
.L1404:
  mov r12, QWORD PTR [r12+24]
  test r12, r12
  jne .L1406
.L1735:
  mov rax, QWORD PTR [rsp+32]
  mov rcx, r14
  mov r9, QWORD PTR [rsp+24]
  mov r8, rbx
  mov r15, QWORD PTR [rsp]
  mov r14, QWORD PTR [rsp+40]
  cmp rbx, rax
  je .L1400
  mov rsi, QWORD PTR [rbx+32]
  mov rbx, QWORD PTR [rbx+40]
  mov rdx, rcx
  cmp rbx, rcx
  cmovbe rdx, rbx
  test rdx, rdx
  je .L1407
  mov rdi, r15
  mov QWORD PTR [rsp+32], rcx
  mov QWORD PTR [rsp+24], r8
  mov QWORD PTR [rsp], r9
  call memcmp
  mov r9, QWORD PTR [rsp]
  mov r8, QWORD PTR [rsp+24]
  test eax, eax
  mov rcx, QWORD PTR [rsp+32]
  jne .L1408
.L1407:
  sub rcx, rbx
  cmp rcx, rbp
  jge .L1409
  cmp rcx, -2147483648
  jl .L1400
  mov eax, ecx
.L1408:
  test eax, eax
  js .L1400
.L1409:
  mov rax, QWORD PTR [r8+64]
  jmp .L1377
.L1731:
  mov rax, QWORD PTR p[rip]
  cmp QWORD PTR root[rip], rax
  je .L1736
  mov rax, QWORD PTR [rax+168]
.L1377:
  mov QWORD PTR p[rip], rax
  lea rax, [rsp+208]
  cmp r15, rax
  je .L1371
  mov rax, QWORD PTR [rsp+208]
  mov rdi, r15
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1371:
  add r14, 32
  cmp QWORD PTR [rsp+8], r14
  jne .L1512
  cmp BYTE PTR [rsp+56], 0
  je .L1514
  mov rax, QWORD PTR p[rip]
  mov r13, QWORD PTR [rax+168]
  mov r14, QWORD PTR [r13+136]
  mov QWORD PTR p[rip], r13
  lea rax, [r13+128]
  test r14, r14
  je .L1574
  mov rsi, QWORD PTR [rsp+8]
  mov QWORD PTR [rsp], r13
  mov r12, rax
  mov ebp, 2147483648
  mov QWORD PTR [rsp+16], rax
  mov r13, r14
  mov rbx, QWORD PTR [rsi-32]
  mov r15, QWORD PTR [rsi-24]
  jmp .L1526
.L1523:
  mov r12, r13
  mov r13, QWORD PTR [r13+16]
  test r13, r13
  je .L1737
.L1526:
  mov r14, QWORD PTR [r13+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r13+32]
  cmp r14, r15
  cmovbe rdx, r14
  test rdx, rdx
  je .L1521
  mov rsi, rbx
  call memcmp
  test eax, eax
  jne .L1522
.L1521:
  sub r14, r15
  cmp r14, rbp
  jge .L1523
  movabs rax, -2147483649
  cmp r14, rax
  jle .L1524
  mov eax, r14d
.L1522:
  test eax, eax
  jns .L1523
.L1524:
  mov r13, QWORD PTR [r13+24]
  test r13, r13
  jne .L1526
.L1737:
  mov rax, QWORD PTR [rsp+16]
  mov r13, QWORD PTR [rsp]
  cmp r12, rax
  je .L1520
  mov rbp, QWORD PTR [r12+40]
  mov rdx, r15
  mov rsi, QWORD PTR [r12+32]
  cmp rbp, r15
  cmovbe rdx, rbp
  test rdx, rdx
  je .L1527
  mov rdi, rbx
  call memcmp
  test eax, eax
  jne .L1528
.L1527:
  sub r15, rbp
  cmp r15, 2147483647
  jg .L1529
  cmp r15, -2147483648
  jl .L1520
  mov eax, r15d
.L1528:
  test eax, eax
  js .L1520
.L1529:
  mov rax, QWORD PTR [r12+64]
  mov edx, 2
  mov esi, OFFSET FLAT:.LC15
  mov edi, OFFSET FLAT:std::cout
  mov BYTE PTR [rax], 0
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L1709
  cmp BYTE PTR [rbx+56], 0
  je .L1531
  movsx esi, BYTE PTR [rbx+67]
.L1532:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rbx, QWORD PTR [rsp+72]
  mov rbp, QWORD PTR [rsp+8]
.L1534:
  mov rdi, QWORD PTR [rbx]
  lea rax, [rbx+16]
  cmp rdi, rax
  je .L1533
  mov rax, QWORD PTR [rbx+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1533:
  add rbx, 32
  cmp rbp, rbx
  jne .L1534
  mov rdi, QWORD PTR [rsp+72]
  mov rsi, QWORD PTR [rsp+176]
  test rdi, rdi
  je .L1349
.L1721:
  add rsp, 296
  sub rsi, rdi
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  pop r15
  jmp operator delete(void*, unsigned long)
.L1730:
  mov rdi, QWORD PTR [rsp+192]
  cmp BYTE PTR [rdi], 46
  jne .L1367
  lea rax, [rsp+208]
  cmp rdi, rax
  je .L1371
  mov rax, QWORD PTR [rsp+208]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
  jmp .L1371
.L1551:
  mov r10, QWORD PTR [rsp+24]
.L1378:
  lea rax, [rsp+192]
  lea rdi, [rbx+72]
  mov rsi, r10
  lea rdx, [rsp+88]
  mov QWORD PTR [rsp+88], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  cmp BYTE PTR [rax+64], 0
  mov rbx, QWORD PTR p[rip]
  jne .L1548
  mov r9, QWORD PTR [rbx+88]
  lea r15, [rbx+80]
  test r9, r9
  je .L1558
  mov r12, QWORD PTR [rsp+192]
.L1547:
  mov rcx, QWORD PTR [rsp+200]
  mov QWORD PTR [rsp+32], rbx
  mov rbx, r9
  mov QWORD PTR [rsp+40], r14
  mov QWORD PTR [rsp+24], r15
  mov r14, rcx
  mov QWORD PTR [rsp], r12
  jmp .L1419
.L1416:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1738
.L1419:
  mov r12, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r12, r14
  cmovbe rdx, r12
  test rdx, rdx
  je .L1414
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1415
.L1414:
  mov r8, r12
  sub r8, r14
  cmp r8, rbp
  jge .L1416
  cmp r8, r13
  jle .L1417
  mov eax, r8d
.L1415:
  test eax, eax
  jns .L1416
.L1417:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1419
.L1738:
  mov r8, r15
  mov r15, QWORD PTR [rsp+24]
  mov rcx, r14
  mov rbx, QWORD PTR [rsp+32]
  mov r14, QWORD PTR [rsp+40]
  mov r12, QWORD PTR [rsp]
  cmp r8, r15
  je .L1413
  mov r15, QWORD PTR [r8+40]
  mov rdx, rcx
  mov rsi, QWORD PTR [r8+32]
  cmp r15, rcx
  cmovbe rdx, r15
  test rdx, rdx
  je .L1420
  mov rdi, r12
  mov QWORD PTR [rsp+24], rcx
  mov QWORD PTR [rsp], r8
  call memcmp
  mov r8, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+24]
  test eax, eax
  jne .L1421
.L1420:
  sub rcx, r15
  cmp rcx, rbp
  jge .L1422
  cmp rcx, -2147483648
  jl .L1413
  mov eax, ecx
.L1421:
  test eax, eax
  js .L1413
.L1422:
  mov BYTE PTR [r8+64], 1
  mov edi, 176
  call operator new(unsigned long)
  mov r9, rax
  lea rax, [rax+24]
  mov QWORD PTR [r9+8], rax
  lea rax, [r9+56]
  mov QWORD PTR [r9+40], rax
  lea rax, [r9+80]
  mov QWORD PTR [r9+96], rax
  mov QWORD PTR [r9+104], rax
  lea rax, [r9+128]
  mov QWORD PTR [r9+144], rax
  mov QWORD PTR [r9+152], rax
  mov rax, QWORD PTR p[rip]
  mov BYTE PTR [r9+24], 0
  mov BYTE PTR [r9+56], 0
  lea rcx, [rax+128]
  mov QWORD PTR [r9+88], 0
  mov QWORD PTR [r9+136], 0
  mov r15, QWORD PTR [rax+136]
  mov QWORD PTR [r9+16], 0
  mov QWORD PTR [r9+48], 0
  mov DWORD PTR [r9+80], 0
  mov QWORD PTR [r9+112], 0
  mov DWORD PTR [r9+128], 0
  mov QWORD PTR [r9+160], 0
  mov QWORD PTR [rsp+32], rax
  mov QWORD PTR [rsp+24], rcx
  test r15, r15
  je .L1560
  mov rbx, QWORD PTR [rsp+200]
  mov r12, QWORD PTR [rsp+192]
  mov QWORD PTR [rsp+48], r15
  mov QWORD PTR [rsp+56], r14
  mov r14, r15
  mov QWORD PTR [rsp+40], r9
  mov r15, rbx
  mov rbx, rcx
  mov QWORD PTR [rsp], r12
  jmp .L1429
.L1426:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1739
.L1429:
  mov r12, QWORD PTR [r14+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r14+32]
  cmp r12, r15
  cmovbe rdx, r12
  test rdx, rdx
  je .L1424
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1425
.L1424:
  mov rcx, r12
  sub rcx, r15
  cmp rcx, rbp
  jge .L1426
  cmp rcx, r13
  jle .L1427
  mov eax, ecx
.L1425:
  test eax, eax
  jns .L1426
.L1427:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1429
.L1739:
  mov rax, QWORD PTR [rsp+24]
  mov rcx, rbx
  mov r12, QWORD PTR [rsp]
  mov rbx, r15
  mov r9, QWORD PTR [rsp+40]
  mov r14, QWORD PTR [rsp+56]
  mov r15, QWORD PTR [rsp+48]
  cmp rcx, rax
  je .L1423
  mov r8, QWORD PTR [rcx+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [rcx+32]
  cmp r8, rbx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1430
  mov rdi, r12
  mov QWORD PTR [rsp+48], r8
  mov QWORD PTR [rsp+40], rcx
  mov QWORD PTR [rsp], r9
  call memcmp
  mov r9, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+40]
  test eax, eax
  mov r8, QWORD PTR [rsp+48]
  jne .L1431
.L1430:
  mov rax, rbx
  sub rax, r8
  cmp rax, rbp
  jge .L1432
  cmp rax, -2147483648
  jl .L1423
.L1431:
  test eax, eax
  js .L1423
.L1432:
  mov QWORD PTR [rcx+64], r9
.L1546:
  mov r9, QWORD PTR [rsp+24]
  mov QWORD PTR [rsp+40], r15
  mov QWORD PTR [rsp+48], r14
  mov r14, r15
  mov r15, rbx
  mov QWORD PTR [rsp], r12
  mov rbx, r9
  jmp .L1439
.L1436:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1740
.L1439:
  mov r12, QWORD PTR [r14+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r14+32]
  cmp r12, r15
  cmovbe rdx, r12
  test rdx, rdx
  je .L1434
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1435
.L1434:
  mov rcx, r12
  sub rcx, r15
  cmp rcx, rbp
  jge .L1436
  cmp rcx, r13
  jle .L1437
  mov eax, ecx
.L1435:
  test eax, eax
  jns .L1436
.L1437:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1439
.L1740:
  mov rax, QWORD PTR [rsp+24]
  mov r9, rbx
  mov r14, QWORD PTR [rsp+48]
  mov rbx, r15
  mov r12, QWORD PTR [rsp]
  mov r15, QWORD PTR [rsp+40]
  cmp r9, rax
  je .L1433
  mov r8, QWORD PTR [r9+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [r9+32]
  cmp r8, rbx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1440
  mov rdi, r12
  mov QWORD PTR [rsp+40], r8
  mov QWORD PTR [rsp], r9
  call memcmp
  mov r9, QWORD PTR [rsp]
  mov r8, QWORD PTR [rsp+40]
  test eax, eax
  jne .L1441
.L1440:
  mov rax, rbx
  sub rax, r8
  cmp rax, rbp
  jge .L1442
  cmp rax, -2147483648
  jl .L1433
.L1441:
  test eax, eax
  js .L1433
.L1442:
  mov rax, QWORD PTR [r9+64]
  mov BYTE PTR [rax], 1
  mov rax, QWORD PTR [rsp+24]
.L1545:
  mov QWORD PTR [rsp+40], r14
  mov r14, rbx
  mov rbx, r15
  mov r15, rax
  mov QWORD PTR [rsp+24], rax
  mov QWORD PTR [rsp], r12
  jmp .L1449
.L1446:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1741
.L1449:
  mov r12, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r12, r14
  cmovbe rdx, r12
  test rdx, rdx
  je .L1444
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1445
.L1444:
  mov rcx, r12
  sub rcx, r14
  cmp rcx, rbp
  jge .L1446
  cmp rcx, r13
  jle .L1447
  mov eax, ecx
.L1445:
  test eax, eax
  jns .L1446
.L1447:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1449
.L1741:
  mov rax, QWORD PTR [rsp+24]
  mov rbx, r14
  mov r12, QWORD PTR [rsp]
  mov r8, r15
  mov r14, QWORD PTR [rsp+40]
  cmp rax, r15
  je .L1443
  mov rsi, QWORD PTR [r15+32]
  mov r15, QWORD PTR [r15+40]
  mov rdx, rbx
  cmp r15, rbx
  cmovbe rdx, r15
  test rdx, rdx
  je .L1450
  mov rdi, r12
  mov QWORD PTR [rsp], r8
  call memcmp
  mov r8, QWORD PTR [rsp]
  test eax, eax
  jne .L1451
.L1450:
  mov rax, rbx
  sub rax, r15
  cmp rax, rbp
  jge .L1452
  cmp rax, -2147483648
  jl .L1443
.L1451:
  test eax, eax
  js .L1443
.L1452:
  mov rdi, QWORD PTR [r8+64]
  lea rsi, [rsp+192]
  add rdi, 8
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_assign(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov rax, QWORD PTR p[rip]
  mov rbx, QWORD PTR [rsp+200]
  lea rdi, [rsp+224]
  mov r12, QWORD PTR [rsp+192]
  mov rdx, QWORD PTR [rax+48]
  mov r15, QWORD PTR [rax+40]
  lea rax, [rsp+240]
  mov QWORD PTR [rsp+232], 0
  mov QWORD PTR [rsp+224], rax
  lea rsi, [rdx+rbx]
  mov BYTE PTR [rsp+240], 0
  mov QWORD PTR [rsp], rdx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  mov rdx, QWORD PTR [rsp]
  sub rax, QWORD PTR [rsp+232]
  cmp rax, rdx
  jb .L1705
  mov rsi, r15
  lea rdi, [rsp+224]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+232]
  cmp rax, rbx
  jb .L1706
  mov rdx, rbx
  mov rsi, r12
  lea rdi, [rsp+224]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  cmp QWORD PTR [rsp+232], rax
  je .L1707
  mov edx, 1
  mov esi, OFFSET FLAT:.LC1
  lea rdi, [rsp+224]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rsi, QWORD PTR [rsp+16]
  lea rcx, [rax+16]
  mov QWORD PTR [rsp+256], rsi
  mov rdx, QWORD PTR [rax]
  mov rsi, QWORD PTR [rax+8]
  cmp rdx, rcx
  je .L1742
  mov QWORD PTR [rsp+256], rdx
  mov rdx, QWORD PTR [rax+16]
  mov QWORD PTR [rsp+272], rdx
.L1466:
  mov rdx, QWORD PTR [rax+8]
  mov r9, QWORD PTR p[rip]
  mov QWORD PTR [rsp+264], rdx
  mov BYTE PTR [rax+16], 0
  mov r15, QWORD PTR [r9+136]
  mov QWORD PTR [rax], rcx
  mov QWORD PTR [rax+8], 0
  lea rax, [r9+128]
  test r15, r15
  je .L1566
  mov rbx, QWORD PTR [rsp+200]
  mov rsi, QWORD PTR [rsp+192]
  mov QWORD PTR [rsp+40], r14
  mov r12, rax
  mov QWORD PTR [rsp+24], r9
  mov r14, rbx
  mov QWORD PTR [rsp], rsi
  mov rbx, r15
  mov QWORD PTR [rsp+32], rax
  jmp .L1473
.L1470:
  mov r12, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1743
.L1473:
  mov r15, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r15, r14
  cmovbe rdx, r15
  test rdx, rdx
  je .L1468
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1469
.L1468:
  mov rcx, r15
  sub rcx, r14
  cmp rcx, rbp
  jge .L1470
  cmp rcx, r13
  jle .L1471
  mov eax, ecx
.L1469:
  test eax, eax
  jns .L1470
.L1471:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1473
.L1743:
  mov rax, QWORD PTR [rsp+32]
  mov rbx, r14
  mov r9, QWORD PTR [rsp+24]
  mov r8, r12
  mov r14, QWORD PTR [rsp+40]
  cmp r12, rax
  je .L1467
  mov rsi, QWORD PTR [r12+32]
  mov r12, QWORD PTR [r12+40]
  mov rdx, rbx
  cmp r12, rbx
  cmovbe rdx, r12
  test rdx, rdx
  je .L1474
  mov rdi, QWORD PTR [rsp]
  mov QWORD PTR [rsp+32], r9
  mov QWORD PTR [rsp+24], r8
  call memcmp
  mov r8, QWORD PTR [rsp+24]
  mov r9, QWORD PTR [rsp+32]
  test eax, eax
  jne .L1475
.L1474:
  mov rcx, rbx
  sub rcx, r12
  cmp rcx, rbp
  jge .L1476
  cmp rcx, -2147483648
  jl .L1467
  mov eax, ecx
.L1475:
  test eax, eax
  js .L1467
.L1476:
  mov rbx, QWORD PTR [r8+64]
  mov rax, QWORD PTR [rsp+256]
  mov rdx, QWORD PTR [rsp+264]
  mov rsi, QWORD PTR [rsp+16]
  mov rdi, QWORD PTR [rbx+40]
  lea rcx, [rbx+56]
  cmp rdi, rcx
  je .L1744
  cmp rax, rsi
  je .L1478
  mov QWORD PTR [rbx+40], rax
  movq xmm0, rdx
  mov rcx, QWORD PTR [rbx+56]
  movhps xmm0, QWORD PTR [rsp+272]
  movups XMMWORD PTR [rbx+48], xmm0
  test rdi, rdi
  je .L1484
  mov QWORD PTR [rsp+256], rdi
  mov QWORD PTR [rsp+272], rcx
.L1481:
  mov QWORD PTR [rsp+264], 0
  mov rax, QWORD PTR [rsp+16]
  mov BYTE PTR [rdi], 0
  mov rdi, QWORD PTR [rsp+256]
  cmp rdi, rax
  je .L1485
  mov rax, QWORD PTR [rsp+272]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1485:
  mov rdi, QWORD PTR [rsp+224]
  lea rax, [rsp+240]
  cmp rdi, rax
  je .L1486
  mov rax, QWORD PTR [rsp+240]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1486:
  mov r10, QWORD PTR p[rip]
  mov rcx, QWORD PTR [r10+136]
  lea rax, [r10+128]
  mov QWORD PTR [rsp+24], rax
  test rcx, rcx
  je .L1569
  mov rbx, QWORD PTR [rsp+200]
  mov r12, QWORD PTR [rsp+192]
  mov QWORD PTR [rsp+48], r14
  mov r15, rax
  mov QWORD PTR [rsp+32], r10
  mov r14, rbx
  mov QWORD PTR [rsp+40], rcx
  mov rbx, rcx
  mov QWORD PTR [rsp], r12
  jmp .L1493
.L1490:
  mov r15, rbx
  mov rbx, QWORD PTR [rbx+16]
  test rbx, rbx
  je .L1745
.L1493:
  mov r12, QWORD PTR [rbx+40]
  mov rdx, r14
  mov rdi, QWORD PTR [rbx+32]
  cmp r12, r14
  cmovbe rdx, r12
  test rdx, rdx
  je .L1488
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1489
.L1488:
  mov rcx, r12
  sub rcx, r14
  cmp rcx, rbp
  jge .L1490
  cmp rcx, r13
  jle .L1491
  mov eax, ecx
.L1489:
  test eax, eax
  jns .L1490
.L1491:
  mov rbx, QWORD PTR [rbx+24]
  test rbx, rbx
  jne .L1493
.L1745:
  mov rax, QWORD PTR [rsp+24]
  mov rbx, r14
  mov r10, QWORD PTR [rsp+32]
  mov r9, r15
  mov rcx, QWORD PTR [rsp+40]
  mov r12, QWORD PTR [rsp]
  mov r14, QWORD PTR [rsp+48]
  cmp r15, rax
  je .L1487
  mov r8, QWORD PTR [r15+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [r15+32]
  cmp r8, rbx
  cmovbe rdx, r8
  test rdx, rdx
  je .L1494
  mov rdi, r12
  mov QWORD PTR [rsp+48], r8
  mov QWORD PTR [rsp], r10
  mov QWORD PTR [rsp+32], r15
  call memcmp
  mov r10, QWORD PTR [rsp]
  mov rcx, QWORD PTR [rsp+40]
  mov r9, r15
  test eax, eax
  mov r8, QWORD PTR [rsp+48]
  jne .L1495
.L1494:
  mov rax, rbx
  sub rax, r8
  cmp rax, rbp
  jge .L1496
  cmp rax, -2147483648
  jl .L1487
.L1495:
  test eax, eax
  js .L1487
.L1496:
  mov rax, QWORD PTR [r9+64]
  mov QWORD PTR [rax+168], r10
  mov rax, QWORD PTR [rsp+24]
.L1544:
  mov QWORD PTR [rsp+48], r14
  mov r15, rbx
  mov r14, rcx
  mov rbx, rax
  mov QWORD PTR [rsp+24], rax
  mov QWORD PTR [rsp+32], r12
  mov QWORD PTR [rsp+40], r10
  mov QWORD PTR [rsp], r12
  jmp .L1503
.L1500:
  mov rbx, r14
  mov r14, QWORD PTR [r14+16]
  test r14, r14
  je .L1746
.L1503:
  mov r12, QWORD PTR [r14+40]
  mov rdx, r15
  mov rdi, QWORD PTR [r14+32]
  cmp r12, r15
  cmovbe rdx, r12
  test rdx, rdx
  je .L1498
  mov rsi, QWORD PTR [rsp]
  call memcmp
  test eax, eax
  jne .L1499
.L1498:
  mov r8, r12
  sub r8, r15
  cmp r8, rbp
  jge .L1500
  cmp r8, r13
  jle .L1501
  mov eax, r8d
.L1499:
  test eax, eax
  jns .L1500
.L1501:
  mov r14, QWORD PTR [r14+24]
  test r14, r14
  jne .L1503
.L1746:
  mov rax, QWORD PTR [rsp+24]
  mov r8, rbx
  mov r12, QWORD PTR [rsp]
  mov rbx, r15
  mov r10, QWORD PTR [rsp+40]
  mov r14, QWORD PTR [rsp+48]
  mov r15, QWORD PTR [rsp+32]
  cmp rax, r8
  je .L1497
  mov rcx, QWORD PTR [r8+40]
  mov rdx, rbx
  mov rsi, QWORD PTR [r8+32]
  cmp rcx, rbx
  cmovbe rdx, rcx
  test rdx, rdx
  je .L1504
  mov rdi, r12
  mov QWORD PTR [rsp+32], rcx
  mov QWORD PTR [rsp+24], r8
  mov QWORD PTR [rsp], r10
  call memcmp
  mov r10, QWORD PTR [rsp]
  mov r8, QWORD PTR [rsp+24]
  test eax, eax
  mov rcx, QWORD PTR [rsp+32]
  jne .L1505
.L1504:
  mov rax, rbx
  sub rax, rcx
  cmp rax, rbp
  jge .L1506
  cmp rax, -2147483648
  jl .L1497
.L1505:
  test eax, eax
  js .L1497
.L1506:
  mov BYTE PTR [rsp+56], 1
  mov rax, QWORD PTR [r8+64]
  jmp .L1377
.L1553:
  mov r9, rax
.L1389:
  lea rax, [rsp+192]
  lea rdi, [rbx+120]
  mov rsi, r9
  lea rdx, [rsp+96]
  mov QWORD PTR [rsp+96], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r9, rax
  jmp .L1398
.L1571:
  mov r8, rax
.L1497:
  lea rax, [rsp+192]
  lea rdi, [r10+120]
  mov rsi, r8
  lea rdx, [rsp+224]
  mov QWORD PTR [rsp+224], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r15, QWORD PTR [rsp+192]
  mov r8, rax
  jmp .L1506
.L1569:
  mov r9, QWORD PTR [rsp+24]
.L1487:
  lea rax, [rsp+192]
  lea rdi, [r10+120]
  mov rsi, r9
  lea rdx, [rsp+152]
  mov QWORD PTR [rsp+152], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r10, QWORD PTR p[rip]
  mov rax, QWORD PTR [rax+64]
  mov rcx, QWORD PTR [r10+136]
  mov QWORD PTR [rax+168], r10
  lea rax, [r10+128]
  test rcx, rcx
  je .L1571
  mov r12, QWORD PTR [rsp+192]
  mov rbx, QWORD PTR [rsp+200]
  jmp .L1544
.L1560:
  mov rcx, QWORD PTR [rsp+24]
.L1423:
  mov rdi, QWORD PTR [rsp+32]
  lea rdx, [rsp+120]
  mov rsi, rcx
  mov QWORD PTR [rsp], r9
  lea rax, [rsp+192]
  add rdi, 120
  mov QWORD PTR [rsp+120], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov rsi, QWORD PTR p[rip]
  mov r9, QWORD PTR [rsp]
  mov r15, QWORD PTR [rsi+136]
  mov QWORD PTR [rax+64], r9
  lea rax, [rsi+128]
  mov QWORD PTR [rsp+32], rsi
  mov QWORD PTR [rsp+24], rax
  test r15, r15
  je .L1562
  mov r12, QWORD PTR [rsp+192]
  mov rbx, QWORD PTR [rsp+200]
  jmp .L1546
.L1558:
  mov r8, r15
.L1413:
  lea rax, [rsp+192]
  lea rdi, [rbx+72]
  mov rsi, r8
  lea rdx, [rsp+112]
  mov QWORD PTR [rsp+112], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r8, rax
  jmp .L1422
.L1566:
  mov r8, rax
.L1467:
  lea rax, [rsp+192]
  lea rdi, [r9+120]
  mov rsi, r8
  lea rdx, [rsp+144]
  mov QWORD PTR [rsp+144], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r8, rax
  jmp .L1476
.L1564:
  mov r8, rax
.L1443:
  mov rdi, QWORD PTR [rsp+32]
  lea rax, [rsp+192]
  lea rdx, [rsp+136]
  mov rsi, r8
  mov QWORD PTR [rsp+136], rax
  add rdi, 120
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r8, rax
  jmp .L1452
.L1562:
  mov r9, QWORD PTR [rsp+24]
.L1433:
  mov rdi, QWORD PTR [rsp+32]
  lea rax, [rsp+192]
  lea rdx, [rsp+128]
  mov rsi, r9
  mov QWORD PTR [rsp+128], rax
  add rdi, 120
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov rsi, QWORD PTR p[rip]
  mov rax, QWORD PTR [rax+64]
  mov r15, QWORD PTR [rsi+136]
  mov QWORD PTR [rsp+32], rsi
  mov BYTE PTR [rax], 1
  lea rax, [rsi+128]
  test r15, r15
  je .L1564
  mov r12, QWORD PTR [rsp+192]
  mov rbx, QWORD PTR [rsp+200]
  jmp .L1545
.L1555:
  mov r8, rax
.L1400:
  lea rax, [rsp+192]
  lea rdi, [r9+120]
  mov rsi, r8
  lea rdx, [rsp+104]
  mov QWORD PTR [rsp+104], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r15, QWORD PTR [rsp+192]
  mov r8, rax
  jmp .L1409
.L1744:
  cmp rax, rsi
  je .L1478
  mov QWORD PTR [rbx+40], rax
  movq xmm0, rdx
  movhps xmm0, QWORD PTR [rsp+272]
  movups XMMWORD PTR [rbx+48], xmm0
.L1484:
  mov rax, QWORD PTR [rsp+16]
  mov QWORD PTR [rsp+256], rax
  lea rax, [rsp+272]
  mov QWORD PTR [rsp+16], rax
  mov rdi, rax
  jmp .L1481
.L1733:
  mov r15, QWORD PTR [rsp+24]
  jmp .L1547
.L1514:
  mov edx, 3
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L1708
  cmp BYTE PTR [rbx+56], 0
  je .L1517
  movsx esi, BYTE PTR [rbx+67]
.L1518:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rsi, QWORD PTR [rsp+8]
  cmp QWORD PTR [rsp+72], rsi
  jne .L1509
.L1539:
  cmp QWORD PTR [rsp+72], 0
  mov rsi, QWORD PTR [rsp+176]
  je .L1349
  mov rdi, QWORD PTR [rsp+72]
  jmp .L1721
.L1710:
  mov rax, QWORD PTR now[rip]
  lea rdi, [rsp+256]
  mov QWORD PTR [rsp+64], rdi
  mov r14, QWORD PTR [rax+48]
  mov r13, QWORD PTR [rax+40]
  lea rax, [rsp+272]
  mov QWORD PTR [rsp+264], 0
  mov QWORD PTR [rsp+16], rax
  lea rsi, [r14+r12]
  mov QWORD PTR [rsp+256], rax
  mov BYTE PTR [rsp+272], 0
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+264]
  cmp rax, r14
  jb .L1701
  mov rdi, QWORD PTR [rsp+64]
  mov rdx, r14
  mov rsi, r13
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  movabs rax, 4611686018427387903
  sub rax, QWORD PTR [rsp+264]
  cmp rax, r12
  jb .L1702
  mov rdi, QWORD PTR [rsp+64]
  mov rdx, r12
  mov rsi, rbp
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, unsigned long)
  mov rdi, QWORD PTR [rbx]
  lea rcx, [rbx+16]
  mov rdx, QWORD PTR [rsp+264]
  mov rax, QWORD PTR [rsp+256]
  mov rsi, QWORD PTR [rsp+16]
  cmp rdi, rcx
  je .L1747
  cmp rax, rsi
  je .L1356
  movq xmm0, rdx
  mov rcx, QWORD PTR [rbx+16]
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+272]
  movups XMMWORD PTR [rbx+8], xmm0
  test rdi, rdi
  je .L1362
  mov QWORD PTR [rsp+256], rdi
  mov QWORD PTR [rsp+272], rcx
.L1361:
  mov QWORD PTR [rsp+264], 0
  mov rax, QWORD PTR [rsp+16]
  mov BYTE PTR [rdi], 0
  mov rdi, QWORD PTR [rsp+256]
  cmp rdi, rax
  je .L1363
  mov rax, QWORD PTR [rsp+272]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1363:
  mov rbp, QWORD PTR [rbx]
  jmp .L1350
.L1478:
  lea rcx, [rbx+40]
  cmp QWORD PTR [rsp+64], rcx
  je .L1568
  test rdx, rdx
  je .L1482
  cmp rdx, 1
  je .L1748
  mov rsi, QWORD PTR [rsp+16]
  call memcpy
  mov rdx, QWORD PTR [rsp+264]
  mov rdi, QWORD PTR [rbx+40]
.L1482:
  mov QWORD PTR [rbx+48], rdx
  mov BYTE PTR [rdi+rdx], 0
  mov rdi, QWORD PTR [rsp+256]
  jmp .L1481
.L1742:
  mov r10, QWORD PTR [rsp+16]
  add rsi, 1
  mov rdx, rcx
  mov r8, r10
  cmp esi, 8
  jnb .L1749
.L1460:
  xor edi, edi
  test sil, 4
  jne .L1750
  test sil, 2
  jne .L1751
.L1464:
  and esi, 1
  je .L1466
.L1752:
  movzx edx, BYTE PTR [rdx+rdi]
  mov BYTE PTR [r8+rdi], dl
  jmp .L1466
.L1574:
  mov r12, rax
.L1520:
  mov rax, QWORD PTR [rsp+8]
  mov rdx, QWORD PTR [rsp+64]
  lea rdi, [r13+120]
  mov rsi, r12
  sub rax, 32
  mov QWORD PTR [rsp+256], rax
  call std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*>, std::_Select1st<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> > >::_M_emplace_hint_unique<std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>, std::tuple<> >(std::_Rb_tree_const_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, folder*> >, std::piecewise_construct_t const&, std::tuple<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>&&, std::tuple<>&&) [clone .isra.0]
  mov r12, rax
  jmp .L1529
.L1349:
  add rsp, 296
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  pop r15
  ret
.L1736:
  mov edx, 3
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  je .L1703
.L1410:
  cmp BYTE PTR [rbx+56], 0
  je .L1411
  movsx esi, BYTE PTR [rbx+67]
.L1412:
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >::put(char)
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >::flush()
  mov rdi, QWORD PTR [rsp+192]
  lea rax, [rsp+208]
  cmp rdi, rax
  je .L1509
  mov rax, QWORD PTR [rsp+208]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1509:
  mov rbx, QWORD PTR [rsp+72]
  mov rbp, QWORD PTR [rsp+8]
.L1538:
  mov rdi, QWORD PTR [rbx]
  lea rax, [rbx+16]
  cmp rdi, rax
  je .L1537
  mov rax, QWORD PTR [rbx+16]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1537:
  add rbx, 32
  cmp rbp, rbx
  jne .L1538
  jmp .L1539
.L1750:
  mov edi, DWORD PTR [rdx]
  mov DWORD PTR [r8], edi
  mov edi, 4
  test sil, 2
  je .L1464
.L1751:
  movzx r9d, WORD PTR [rdx+rdi]
  mov WORD PTR [r8+rdi], r9w
  add rdi, 2
  and esi, 1
  je .L1466
  jmp .L1752
.L1517:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L1518
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L1518
.L1531:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L1532
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L1532
.L1411:
  mov rdi, rbx
  call std::ctype<char>::_M_widen_init() const
  mov rax, QWORD PTR [rbx]
  mov esi, 10
  mov rax, QWORD PTR [rax+48]
  cmp rax, OFFSET FLAT:_ZNKSt5ctypeIcE8do_widenEc
  je .L1412
  mov rdi, rbx
  call rax
  movsx esi, al
  jmp .L1412
.L1749:
  mov r9d, esi
  xor edx, edx
  and r9d, -8
.L1461:
  mov edi, edx
  add edx, 8
  mov r8, QWORD PTR [rcx+rdi]
  mov QWORD PTR [r10+rdi], r8
  cmp edx, r9d
  jb .L1461
  mov rdi, QWORD PTR [rsp+16]
  lea r8, [rdi+rdx]
  add rdx, rcx
  jmp .L1460
.L1747:
  cmp rax, rsi
  je .L1356
  movq xmm0, rdx
  mov QWORD PTR [rbx], rax
  movhps xmm0, QWORD PTR [rsp+272]
  movups XMMWORD PTR [rbx+8], xmm0
.L1362:
  mov rax, QWORD PTR [rsp+16]
  mov QWORD PTR [rsp+256], rax
  lea rax, [rsp+272]
  mov QWORD PTR [rsp+16], rax
  mov rdi, rax
  jmp .L1361
.L1356:
  test rdx, rdx
  je .L1359
  cmp rdx, 1
  je .L1753
  mov rsi, QWORD PTR [rsp+16]
  call memcpy
  mov rdx, QWORD PTR [rsp+264]
  mov rdi, QWORD PTR [rbx]
.L1359:
  mov QWORD PTR [rbx+8], rdx
  mov BYTE PTR [rdi+rdx], 0
  mov rdi, QWORD PTR [rsp+256]
  jmp .L1361
.L1399:
  mov edx, 3
  mov esi, OFFSET FLAT:.LC14
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, QWORD PTR std::cout[rip]
  mov rax, QWORD PTR [rax-24]
  mov rbx, QWORD PTR std::cout[rax+240]
  test rbx, rbx
  jne .L1410
  jmp .L1704
.L1748:
  movzx eax, BYTE PTR [rsp+272]
  mov BYTE PTR [rdi], al
  mov rdx, QWORD PTR [rsp+264]
  mov rdi, QWORD PTR [rbx+40]
  jmp .L1482
.L1568:
  mov rdi, rax
  jmp .L1481
.L1753:
  movzx eax, BYTE PTR [rsp+272]
  mov BYTE PTR [rdi], al
  mov rdx, QWORD PTR [rsp+264]
  mov rdi, QWORD PTR [rbx]
  jmp .L1359
  jmp .L1694
  jmp .L1696
  jmp .L1694
  jmp .L1692
  jmp .L1698
  mov rbx, rax
  jmp .L1540
  mov rbx, rax
  jmp .L1541
touch(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) [clone .cold]:
.L1703:
  call std::__throw_bad_cast()
.L1704:
  call std::__throw_bad_cast()
.L1692:
  mov rbx, rax
.L1457:
  lea rdi, [rsp+192]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
.L1543:
  lea rdi, [rsp+160]
  call std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector() [complete object destructor]
  mov rdi, rbx
  call _Unwind_Resume
.L1694:
  mov rbx, rax
.L1542:
  lea rdi, [rsp+224]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L1457
.L1696:
  mov rbx, rax
  jmp .L1543
.L1705:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
  jmp .L1694
.L1708:
  call std::__throw_bad_cast()
.L1709:
  call std::__throw_bad_cast()
.L1707:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1706:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1702:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1701:
  mov edi, OFFSET FLAT:.LC13
  call std::__throw_length_error(char const*)
.L1698:
  mov rdi, QWORD PTR [rsp+64]
  mov rbx, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
.L1541:
  mov rdi, QWORD PTR [rsp+64]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  jmp .L1542
.L1540:
  mov rdi, QWORD PTR [rsp+64]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, rbx
  call _Unwind_Resume
.LC21:
  .string "touch"
.LC22:
  .string "pwd"
main:
  push r14
  mov edi, OFFSET FLAT:_ZSt3cin
  push r13
  push r12
  push rbp
  push rbx
  sub rsp, 112
  lea rsi, [rsp+12]
  call std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
  call initFS()
  mov eax, DWORD PTR [rsp+12]
  lea edx, [rax-1]
  mov DWORD PTR [rsp+12], edx
  test eax, eax
  je .L1795
  lea rbp, [rsp+32]
.L1755:
  lea rsi, [rsp+16]
  mov edi, OFFSET FLAT:_ZSt3cin
  mov QWORD PTR [rsp+16], rbp
  mov QWORD PTR [rsp+24], 0
  mov BYTE PTR [rsp+32], 0
  call std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
  mov rax, QWORD PTR [rsp+24]
  mov rbx, QWORD PTR [rsp+16]
  cmp rax, 5
  je .L1802
  cmp rax, 2
  je .L1761
  cmp rax, 3
  jne .L1765
  mov edx, 3
  mov esi, OFFSET FLAT:.LC22
  mov rdi, rbx
  call memcmp
  test eax, eax
  je .L1803
.L1765:
  cmp rbx, rbp
  je .L1771
  mov rax, QWORD PTR [rsp+32]
  mov rdi, rbx
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1771:
  mov eax, DWORD PTR [rsp+12]
  lea edx, [rax-1]
  mov DWORD PTR [rsp+12], edx
  test eax, eax
  jne .L1755
.L1795:
  add rsp, 112
  xor eax, eax
  pop rbx
  pop rbp
  pop r12
  pop r13
  pop r14
  ret
.L1802:
  cmp DWORD PTR [rbx], 1768188781
  je .L1804
.L1757:
  mov edx, 5
  mov esi, OFFSET FLAT:.LC21
  mov rdi, rbx
  call memcmp
  test eax, eax
  jne .L1765
  lea rax, [rsp+64]
  lea r14, [rsp+48]
  mov edi, OFFSET FLAT:_ZSt3cin
  mov BYTE PTR [rsp+64], 0
  mov QWORD PTR [rsp+48], rax
  mov rsi, r14
  xor eax, eax
  mov QWORD PTR [rsp+56], rax
  call std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
  lea rbx, [rsp+80]
  mov rsi, r14
  mov rdi, rbx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [complete object constructor]
  mov rdi, rbx
  call touch(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
.L1801:
  mov rdi, rbx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rdi, r14
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rbx, QWORD PTR [rsp+16]
  jmp .L1765
.L1761:
  cmp WORD PTR [rbx], 29548
  je .L1805
  cmp WORD PTR [rbx], 25699
  je .L1806
  cmp WORD PTR [rbx], 28018
  jne .L1765
  lea r14, [rsp+48]
  lea rax, [rsp+64]
  mov edi, OFFSET FLAT:_ZSt3cin
  mov QWORD PTR [rsp+56], 0
  mov rsi, r14
  mov QWORD PTR [rsp+48], rax
  mov BYTE PTR [rsp+64], 0
  call std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
  lea rbx, [rsp+80]
  mov rsi, r14
  mov rdi, rbx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [complete object constructor]
  mov rdi, rbx
  call rm(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  jmp .L1801
.L1805:
  call ls()
.L1800:
  mov rbx, QWORD PTR [rsp+16]
  jmp .L1765
.L1806:
  lea rax, [rsp+64]
  lea rsi, [rsp+48]
  mov edi, OFFSET FLAT:_ZSt3cin
  mov QWORD PTR [rsp+56], 0
  mov QWORD PTR [rsp+48], rax
  mov BYTE PTR [rsp+64], 0
  call std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
  lea rbx, [rsp+80]
  lea rsi, [rsp+48]
  mov rdi, rbx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [complete object constructor]
  mov rdi, rbx
  call cd(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, rbx
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  lea rdi, [rsp+48]
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()
  mov rbx, QWORD PTR [rsp+16]
  jmp .L1765
.L1804:
  cmp BYTE PTR [rbx+4], 114
  jne .L1757
  lea r14, [rsp+48]
  lea r13, [rsp+64]
  xor edx, edx
  mov edi, OFFSET FLAT:_ZSt3cin
  mov rsi, r14
  mov QWORD PTR [rsp+48], r13
  mov QWORD PTR [rsp+56], rdx
  mov BYTE PTR [rsp+64], 0
  call std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
  mov rsi, QWORD PTR [rsp+48]
  mov rdx, QWORD PTR [rsp+56]
  lea rbx, [rsp+80]
  lea r12, [rsp+96]
  mov rdi, rbx
  mov QWORD PTR [rsp+80], r12
  add rdx, rsi
  call void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char*>(char*, char*, std::forward_iterator_tag) [clone .isra.0]
  mov rdi, rbx
  call mkdir(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  mov rdi, QWORD PTR [rsp+80]
  cmp rdi, r12
  je .L1763
  mov rax, QWORD PTR [rsp+96]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
.L1763:
  mov rdi, QWORD PTR [rsp+48]
  cmp rdi, r13
  je .L1800
  mov rax, QWORD PTR [rsp+64]
  lea rsi, [rax+1]
  call operator delete(void*, unsigned long)
  mov rbx, QWORD PTR [rsp+16]
  jmp .L1765
.L1803:
  call pwd()
  jmp .L1800
  mov rbx, rax
  jmp .L1774
  mov rbp, rax
  jmp .L1773
  mov rbp, rax
  jmp .L1776
  mov rbp, rax
  jmp .L1780
  mov rbp, rax
  jmp .L1778
  mov rbx, rax
  jmp .L1775
  mov rbx, rax
  jmp .L1777
  mov rbx, rax
  jmp .L1781
  mov rbx, rax
  jmp .L1779
main.cold:
p:
  .zero 8
now:
  .zero 8
root:
  .zero 8