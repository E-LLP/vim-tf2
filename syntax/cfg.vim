" Vim syntax file
" Language:         .cfg for TF2
" Maintainer:       Aug <https://github.com/au>
" URL:              https://github.com/au/vim-tf2
" Updated:          2016-06-30
" Credits:          From Sumant Manne's original 2010 config, based on the
"                   original 2005 quake.vim by Nikolai Weibull.
"
"                   Visit Sumant at github/dpyro
"                   And Nikolai at github/now
"
" License:          MIT. Just keep this header here. To make revisions,
"                   open an Issue, and I'll be sure to look it over.

if exists("b:current_syntax")
	finish
endif

let s:cpo_save = &cpo
set cpo&vim

setlocal iskeyword+=-,+

" ======================================= "

syn case ignore

syn keyword cfgTodo         TODO FIXME XXX NOTE
syn match cfgComment        "//.*$" contains=cfgTodo

syn region cfgString        display oneline start=+"+ skip=+\\\\\|\\"+ end=+"\|$+ 
syn match cfgNumbers        display transparent '\<-\=\d\|\.\d'
                              \ contains=cfgNumber,cfgFloat
syn match cfgNumber         contained display '\d\+\>'
syn match cfgNumber         contained display '-\d\+\>'
syn match cfgFloat          contained display '\d\+\.\d*'
syn match cfgFloat          contained display '\.\d\+\>'
syn match cfgConstant       ' always\| never'

syn keyword cfgMeta         alias unbindall
syn keyword cfgRun          exec alias map rcon echo
syn match cfgMeta           'unbind \|bind ' nextgroup=cfgKey
syn match cfgKey            '\"\?\(\[\|]\|space\|printscreen\|capslock\|scrolllock\|escape\|f2\|f3\|f4\|f5\|f6\|f7\|f8\|f9\|f10\|f11\|f12\|f1\|pause\|`\|-\|=\|backspace\|tab\|semicolon\|shift\|enter\|,\|ctrl\|alt\|uparrow\|downarrow\|rightarrow\|leftarrow\|ins\|home\|pgup\|pgdn\|del\|end\|mouse1\|mouse2\|mouse3\|mouse4\|mouse5\|mwheelup\|mwheeldown\|kp_end\|kp_downarrow\|kp_pgdn\|kp_leftarrow\|kp_5\|kp_rightarrow\|kp_home\|kp_uparrow\|p_pgup\|kp_ins\|kp_plus\|kp_minus\|kp_slash\|kp_del\|kp_enter\)\"\?' contained
syn match cfgKey            '\"\?\a\"\? ' contained
syn match cfgKey            '\"\?\d\"\? ' contained

syn match cfgCommand        '^\s*r_\S*'
syn match cfgCommand        '^\s*cl_\S*'
syn match cfgCommand        '^\s*mat_\S*'
syn match cfgCommand        '^\s*tf_\S*'
syn match cfgCommand        '^\s*mp_\S*'
syn match cfgCommand        '^\s*sv_\S*'

syn match cfgCommand        '^\s*adsp_\S*'
syn match cfgCommand        '^\s*ai_\S*'
syn match cfgCommand        '^\s*bot_\S*'
syn match cfgCommand        '^\s*budget_\S*'
syn match cfgCommand        '^\s*bugreporter_\S*'
syn match cfgCommand        '^\s*c_\S*'
syn match cfgCommand        '^\s*cam_\S*'
syn match cfgCommand        '^\s*cc_\S*'
syn match cfgCommand        '^\s*commentary_\S*'
syn match cfgCommand        '^\s*con_\S*'
syn match cfgCommand        '^\s*demo_\S*'
syn match cfgCommand        '^\s*ds_\S*'
syn match cfgCommand        '^\s*dsp_\S*'
syn match cfgCommand        '^\s*engine_\S*'
syn match cfgCommand        '^\s*fov_\S*'
syn match cfgCommand        '^\s*fps_\S*'
syn match cfgCommand        '^\s*func_\S*'
syn match cfgCommand        '^\s*g15_\S*'
syn match cfgCommand        '^\s*g_\S*'
syn match cfgCommand        '^\s*glow_\S*'
syn match cfgCommand        '^\s*hud_\S*'
syn match cfgCommand        '^\s*ifm_\S*'
syn match cfgCommand        '^\s*in_\S*'
syn match cfgCommand        '^\s*joy_\S*'
syn match cfgCommand        '^\s*jpeg_\S*'
syn match cfgCommand        '^\s*lod_\S*'
syn match cfgCommand        '^\s*m_\S*'
syn match cfgCommand        '^\s*muzzleflash_\S*'
syn match cfgCommand        '^\s*net_\S*'
syn match cfgCommand        '^\s*net_\S*'
syn match cfgCommand        '^\s*npc_\S*'
syn match cfgCommand        '^\s*option_\S*'
syn match cfgCommand        '^\s*overview_\S*'
syn match cfgCommand        '^\s*prec_\S*'
syn match cfgCommand        '^\s*props_\S*'
syn match cfgCommand        '^\s*publish_\S*'
syn match cfgCommand        '^\s*pyro_\S*'
syn match cfgCommand        '^\s*ragdoll_\S*'
syn match cfgCommand        '^\s*replay_\S*'
syn match cfgCommand        '^\s*rope_\S*'
syn match cfgCommand        '^\s*sb_\S*'
syn match cfgCommand        '^\s*sc_\S*'
syn match cfgCommand        '^\s*scene_\S*'
syn match cfgCommand        '^\s*sixense_\S*'
syn match cfgCommand        '^\s*sk_\S*'
syn match cfgCommand        '^\s*snd\S*'
syn match cfgCommand        '^\s*spec_\S*'
syn match cfgCommand        '^\s*store_\S*'
syn match cfgCommand        '^\s*texture_\S*'
syn match cfgCommand        '^\s*tracer_\S*'
syn match cfgCommand        '^\s*vgui_\S*'
syn match cfgCommand        '^\s*video_\S*'
syn match cfgCommand        '^\s*viewmodel_\S*'
syn match cfgCommand        '^\s*violence_\S*'
syn match cfgCommand        '^\s*violence_\S*'
syn match cfgCommand        '^\s*voice_\S*'
syn match cfgCommand        '^\s*vprof_\S*'
syn match cfgCommand        '^\s*vr_\S*'
syn match cfgCommand        '^\s*windows_\S*'
syn match cfgCommand        '^\s*xbox_\S*'
syn match cfgCommand        '^\s*youtube_\S*'

syn keyword cfgCommand      name password skill closecaption rate volume crosshair sensitivity suitvolume developer

" ======================================= "

hi def link cfgCommand      Type
hi def link cfgRun          Function
hi def link cfgMeta         Statement
hi def link cfgConstant     Constant
hi def link cfgKey          Constant
hi def link cfgComment      Comment
hi def link cfgFloat        Number
hi def link cfgNumber       Number
hi def link cfgString       String
hi def link cfgTodo         Todo

" ======================================= "

let b:current_syntax = "cfg"

let &cpo = s:cpo_save
unlet s:cpo_save
