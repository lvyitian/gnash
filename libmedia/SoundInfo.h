// 
//   Copyright (C) 2007, 2008 Free Software Foundation, Inc.
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
//


#ifndef __SOUNDINFO_H__
#define __SOUNDINFO_H__

#include "MediaParser.h" // for audioCodecType enum and AudioInfo

namespace gnash {
namespace media {

///
/// Class containing information about a sound. Is created by the parser while
/// parsing, and ownership is then transfered to sound_data. When the parser is
/// parsing streams, it will ask the soundhandler for this to know what properties
/// the stream has.
///
class SoundInfo {
public:
	/// Constructor
	//
	/// @param format
	/// The format of the sound. Can be MP3, ADPCM, uncompressed or Nellymoser
	///
	/// @param stero
	/// Defines whether the sound is in stereo.
	///
	/// @param sampleRate
	/// The sample rate of the sound.
	///
	/// @param sampleCount
	/// The sample count in the sound. In soundstreams this is an average for each frame.
	///
	/// @param is16bit
	/// Defines whether the sound is in stereo.
	/// Defines whether the sound is in 16bit format (samplesize == 2)? else it 
	/// is 8bit (samplesize == 1). Used for streams when decoding adpcm.
	///
	SoundInfo(audioCodecType format, bool stereo, boost::uint32_t sampleRate, boost::uint32_t sampleCount, bool is16bit)
	:	_format(format),
		_stereo(stereo),
		_sampleRate(sampleRate),
		_sampleCount(sampleCount),
		_is16bit(is16bit)
	{
	}

	/// Returns the current format of the sound
	///
	/// @return the current format of the sound
	audioCodecType getFormat() { return _format; }

	/// Returns the stereo status of the sound
	///
	/// @return the stereo status of the sound
	bool isStereo() { return _stereo; }

	/// Returns the samplerate of the sound
	///
	/// @return the samplerate of the sound
	unsigned long getSampleRate() { return _sampleRate; }

	/// Returns the samplecount of the sound
	///
	/// @return the samplecount of the sound
	unsigned long getSampleCount() { return _sampleCount; }

	/// Returns the 16bit status of the sound
	///
	/// @return the 16bit status of the sound
	bool is16bit() { return _is16bit; }

private:
	/// Current format of the sound (MP3, raw, etc).
	audioCodecType _format;

	/// The size of the undecoded data
	unsigned long _dataSize;

	/// Stereo or not
	bool _stereo;

	/// Sample rate, one of 5512, 11025, 22050, 44100
	boost::uint32_t _sampleRate;

	/// Number of samples
	boost::uint32_t _sampleCount;

	/// Is the audio in 16bit format (samplesize == 2)? else it 
	/// is 8bit (samplesize == 1). Used for streams when decoding adpcm.
	bool _is16bit;
};

} // gnash.media namespace 
} // namespace gnash

#endif // __SOUNDINFO_H__
