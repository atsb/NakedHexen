set(GAME_SOURCE_FILES
a_action.c am_data.h am_map.c am_map.h ct_chat.c 
d_net.c f_finale.c g_game.c h2def.h h2_main.c 
h2stdinc.h h_hubmsg.c h_hubmsg.h i_cdmus.h info.c 
info.h in_lude.c i_sdl.c i_sdlmixer.c i_sound.h 
i_system.c m_bams.h m_misc.c mn_menu.c mus.c mus.h 
p_acs.c p_anim.c p_ceilng.c p_doors.c p_enemy.c 
p_floor.c p_inter.c p_lights.c p_local.h p_map.c 
p_maputl.c p_mobj.c po_man.c p_plats.c p_pspr.c 
p_setup.c p_sight.c p_spec.c p_spec.h p_switch.c 
p_telept.c p_things.c p_tick.c p_user.c r_bsp.c 
r_data.c r_draw.c resource.h r_local.h r_main.c 
r_plane.c r_segs.c r_things.c sb_bar.c sc_man.c 
sn_sonix.c sounds.h soundst.h s_sound.c st_start.c 
st_start.h sv_save.c sv_save.h tables.c template.c 
textdefs.h transtb10.h transtb11.h v_compat.h 
v_video.c w_wad.c xddefs.h z_zone.c)

set(GAME_INCLUDE_DIRS "${CMAKE_CURRENT_BINARY_DIR}")

set(EXTRA_LIBS m SDL2::SDL2main SDL2::SDL2 SDL2::mixer)

add_executable("hexen" ${GAME_SOURCE_FILES})

target_include_directories("hexen" PRIVATE ${GAME_INCLUDE_DIRS})
target_link_libraries("hexen" ${EXTRA_LIBS})

if(MSVC)
    set_target_properties("hexen" PROPERTIES
                          LINK_FLAGS "/MANIFEST:NO")
endif()
