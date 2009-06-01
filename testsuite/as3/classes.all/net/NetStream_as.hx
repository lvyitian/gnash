// NetStream_as.hx:  ActionScript 3 "NetStream" class, for Gnash.
//
// Generated by gen-as3.sh on: 20090514 by "rob". Remove this
// after any hand editing loosing changes.
//
//   Copyright (C) 2009 Free Software Foundation, Inc.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
//

// This test case must be processed by CPP before compiling to include the
//  DejaGnu.hx header file for the testing framework support.

#if flash9
import flash.net.NetConnection;
import flash.net.NetStream;
import flash.display.MovieClip;
#else
import flash.NetStream;
import flash.MovieClip;
#end
import flash.Lib;
import Type;

// import our testing API
import DejaGnu;

// Class must be named with the _as suffix, as that's the same name as the file.
class NetStream_as {
    static function main() {
        var nc:NetConnection = new NetConnection();
        var x1:NetStream = new NetStream(nc);

        // Make sure we actually get a valid class        
        if (x1 != null) {
            DejaGnu.pass("NetStream class exists");
        } else {
            DejaGnu.fail("NetStream class doesn't exist");
        }
// Tests to see if all the properties exist. All these do is test for
// existance of a property, and don't test the functionality at all. This
// is primarily useful only to test completeness of the API implementation.
	if (x1.bufferLength == 0) {
	    DejaGnu.pass("NetStream.bufferLength property exists");
	} else {
	    DejaGnu.fail("NetStream.bufferLength property doesn't exist");
	}
	if (x1.bufferTime == 0) {
	    DejaGnu.pass("NetStream.bufferTime property exists");
	} else {
	    DejaGnu.fail("NetStream.bufferTime property doesn't exist");
	}
	if (x1.bytesLoaded == 0) {
	    DejaGnu.pass("NetStream.bytesLoaded property exists");
	} else {
	    DejaGnu.fail("NetStream.bytesLoaded property doesn't exist");
	}
	if (x1.bytesTotal == 0) {
	    DejaGnu.pass("NetStream.bytesTotal property exists");
	} else {
	    DejaGnu.fail("NetStream.bytesTotal property doesn't exist");
	}
	if (x1.checkPolicyFile == false) {
	    DejaGnu.pass("NetStream.checkPolicyFile property exists");
	} else {
	    DejaGnu.fail("NetStream.checkPolicyFile property doesn't exist");
	}
// 	if (x1.client == Object) {
// 	    DejaGnu.pass("NetStream.client property exists");
// 	} else {
// 	    DejaGnu.fail("NetStream.client property doesn't exist");
// 	}
	if (x1.currentFPS == 0) {
	    DejaGnu.pass("NetStream.currentFPS property exists");
	} else {
	    DejaGnu.fail("NetStream.currentFPS property doesn't exist");
	}
	if (x1.liveDelay == 0) {
	    DejaGnu.pass("NetStream.liveDelay property exists");
	} else {
	    DejaGnu.fail("NetStream.liveDelay property doesn't exist");
	}
	if (x1.objectEncoding == 0) {
	    DejaGnu.pass("NetStream.objectEncoding property exists");
	} else {
	    DejaGnu.fail("NetStream.objectEncoding property doesn't exist");
	}
// 	if (x1.soundTransform == SoundTransform) {
// 	    DejaGnu.pass("NetStream.soundTransform property exists");
// 	} else {
// 	    DejaGnu.fail("NetStream.soundTransform property doesn't exist");
// 	}
	if (x1.time == 0) {
	    DejaGnu.pass("NetStream.time property exists");
	} else {
	    DejaGnu.fail("NetStream.time property doesn't exist");
	}

// Tests to see if all the methods exist. All these do is test for
// existance of a method, and don't test the functionality at all. This
// is primarily useful only to test completeness of the API implementation.
// 	if (x1.NetStream == NetConnection) {
// 	    DejaGnu.pass("NetStream::NetStream() method exists");
// 	} else {
// 	    DejaGnu.fail("NetStream::NetStream() method doesn't exist");
// 	}
	if (x1.attachAudio == null) {
	    DejaGnu.pass("NetStream::attachAudio() method exists");
	} else {
	    DejaGnu.fail("NetStream::attachAudio() method doesn't exist");
	}
	if (x1.attachCamera == null) {
	    DejaGnu.pass("NetStream::attachCamera() method exists");
	} else {
	    DejaGnu.fail("NetStream::attachCamera() method doesn't exist");
	}
	if (x1.close == null) {
	    DejaGnu.pass("NetStream::close() method exists");
	} else {
	    DejaGnu.fail("NetStream::close() method doesn't exist");
	}
	if (x1.pause == null) {
	    DejaGnu.pass("NetStream::pause() method exists");
	} else {
	    DejaGnu.fail("NetStream::pause() method doesn't exist");
	}
	if (x1.play == null) {
	    DejaGnu.pass("NetStream::play() method exists");
	} else {
	    DejaGnu.fail("NetStream::play() method doesn't exist");
	}
	if (x1.publish == null) {
	    DejaGnu.pass("NetStream::publish() method exists");
	} else {
	    DejaGnu.fail("NetStream::publish() method doesn't exist");
	}
	if (x1.receiveAudio == null) {
	    DejaGnu.pass("NetStream::receiveAudio() method exists");
	} else {
	    DejaGnu.fail("NetStream::receiveAudio() method doesn't exist");
	}
	if (x1.receiveVideo == null) {
	    DejaGnu.pass("NetStream::receiveVideo() method exists");
	} else {
	    DejaGnu.fail("NetStream::receiveVideo() method doesn't exist");
	}
	if (x1.receiveVideoFPS == null) {
	    DejaGnu.pass("NetStream::receiveVideoFPS() method exists");
	} else {
	    DejaGnu.fail("NetStream::receiveVideoFPS() method doesn't exist");
	}
// AIR only
// 	if (x1.resetDRMVouchers == null) {
// 	    DejaGnu.pass("NetStream::resetDRMVouchers() method exists");
// 	} else {
// 	    DejaGnu.fail("NetStream::resetDRMVouchers() method doesn't exist");
// 	}
	if (x1.resume == null) {
	    DejaGnu.pass("NetStream::resume() method exists");
	} else {
	    DejaGnu.fail("NetStream::resume() method doesn't exist");
	}
	if (x1.seek == null) {
	    DejaGnu.pass("NetStream::seek() method exists");
	} else {
	    DejaGnu.fail("NetStream::seek() method doesn't exist");
	}
	if (x1.send == null) {
	    DejaGnu.pass("NetStream::send() method exists");
	} else {
	    DejaGnu.fail("NetStream::send() method doesn't exist");
	}
// AIR only
// 	if (x1.setDRMAuthenticationCredentials == null) {
// 	    DejaGnu.pass("NetStream::setDRMAuthenticationCredentials() method exists");
// 	} else {
// 	    DejaGnu.fail("NetStream::setDRMAuthenticationCredentials() method doesn't exist");
// 	}
	if (x1.togglePause == null) {
	    DejaGnu.pass("NetStream::togglePause() method exists");
	} else {
	    DejaGnu.fail("NetStream::togglePause() method doesn't exist");
	}

        // Call this after finishing all tests. It prints out the totals.
        DejaGnu.done();
    }
}

// local Variables:
// mode: C++
// indent-tabs-mode: t
// End:
