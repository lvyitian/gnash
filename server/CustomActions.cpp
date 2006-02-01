// 
//   Copyright (C) 2005, 2006 Free Software Foundation, Inc.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
//

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "log.h"
#include "CustomActions.h"

namespace gnash {

CustomActions::CustomActions() {
}

CustomActions::~CustomActions() {
}


void
CustomActions::get()
{
    log_msg("%s:unimplemented \n", __FUNCTION__);
}

void
CustomActions::install()
{
    log_msg("%s:unimplemented \n", __FUNCTION__);
}

void
CustomActions::list()
{
    log_msg("%s:unimplemented \n", __FUNCTION__);
}

void
CustomActions::uninstall()
{
    log_msg("%s:unimplemented \n", __FUNCTION__);
}
void
customactions_new(const fn_call& fn)
{
    customactions_as_object *customactions_obj = new customactions_as_object;

    customactions_obj->set_member("get", &customactions_get);
    customactions_obj->set_member("install", &customactions_install);
    customactions_obj->set_member("list", &customactions_list);
    customactions_obj->set_member("uninstall", &customactions_uninstall);

    fn.result->set_as_object_interface(customactions_obj);
}
void customactions_get(const fn_call& fn) {
    log_msg("%s:unimplemented \n", __FUNCTION__);
}
void customactions_install(const fn_call& fn) {
    log_msg("%s:unimplemented \n", __FUNCTION__);
}
void customactions_list(const fn_call& fn) {
    log_msg("%s:unimplemented \n", __FUNCTION__);
}
void customactions_uninstall(const fn_call& fn) {
    log_msg("%s:unimplemented \n", __FUNCTION__);
}

} // end of gnaash namespace

