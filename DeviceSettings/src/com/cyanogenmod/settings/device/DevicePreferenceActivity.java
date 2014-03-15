/*
 * Copyright (C) 2011 The CyanogenMod Project
 * Copyright (C) 2013 Mustaavalkosta
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings.device;

import android.content.Context;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import com.cyanogenmod.settings.device.R;

public class DevicePreferenceActivity extends PreferenceFragment implements
        OnPreferenceChangeListener {

    public static final String KEY_DYN_FSYNC = "dyn_fsync";
    public static final String KEY_FAST_CHARGE = "fast_charge";
    public static final String KEY_SWEEP2WAKE = "sweep2wake";
    public static final String KEY_ALLOW_STROKE = "s2w_allow_stroke";
    public static final String KEY_MIN_DISTANCE = "s2w_min_distance";
    public static final String KEY_REGISTER_THRESHOLD = "s2w_register_threshold";
    public static final String KEY_DOUBLETAP2WAKE = "doubletap2wake";
    public static final String KEY_MIN_DURATION = "dt2w_min_duration";
    public static final String KEY_MAX_DURATION = "dt2w_max_duration";

    private Context context;
    private CheckBoxPreference mDynFsync;
    private CheckBoxPreference mFastCharge;
    private SwitchPreference mSweep2Wake;
    private CheckBoxPreference mAllowStroke;
    private SeekBarPreference mMinDistance;
    private SeekBarPreference mRegisterThreshold;
    private SwitchPreference mDoubleTap2Wake;
    private SeekBarPreference mMinDuration;
    private SeekBarPreference mMaxDuration;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.preferences);
        context = getActivity().getApplication();

        mDynFsync = (CheckBoxPreference) findPreference(KEY_DYN_FSYNC);
        mDynFsync.setChecked(DynFsync.isEnabled());
        mDynFsync.setEnabled(DynFsync.isSupported());

        mFastCharge = (CheckBoxPreference) findPreference(KEY_FAST_CHARGE);
        mFastCharge.setChecked(FastCharge.isEnabled());
        mFastCharge.setEnabled(FastCharge.isSupported());

        mSweep2Wake = (SwitchPreference) findPreference(KEY_SWEEP2WAKE);
        mSweep2Wake.setChecked(Sweep2Wake.isEnabled());
        mSweep2Wake.setEnabled(Sweep2Wake.isSupported());
        mSweep2Wake.setOnPreferenceChangeListener(this);

        mAllowStroke = (CheckBoxPreference) findPreference(KEY_ALLOW_STROKE);
        mAllowStroke.setChecked(AllowStroke.isEnabled());
        mAllowStroke.setEnabled(AllowStroke.isSupported());

        mMinDistance = (SeekBarPreference) findPreference(KEY_MIN_DISTANCE);
        mMinDistance.setValue(MinDistance.getValue());
        mMinDistance.setOnPreferenceChangeListener(this);

        mRegisterThreshold = (SeekBarPreference) findPreference(KEY_REGISTER_THRESHOLD);
        mRegisterThreshold.setValue(RegisterThreshold.getValue());
        mRegisterThreshold.setOnPreferenceChangeListener(this);

        mDoubleTap2Wake = (SwitchPreference) findPreference(KEY_DOUBLETAP2WAKE);
        mDoubleTap2Wake.setChecked(DoubleTap2Wake.isEnabled());
        mDoubleTap2Wake.setEnabled(DoubleTap2Wake.isSupported());
        mDoubleTap2Wake.setOnPreferenceChangeListener(this);

        mMinDuration = (SeekBarPreference) findPreference(KEY_MIN_DURATION);
        mMinDuration.setValue(MinDuration.getValue());
        mMinDuration.setOnPreferenceChangeListener(this);

        mMaxDuration = (SeekBarPreference) findPreference(KEY_MAX_DURATION);
        mMaxDuration.setValue(MaxDuration.getValue());
        mMaxDuration.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mDynFsync) {
            if (mDynFsync.isChecked())
                DynFsync.enable(context);
            else
                DynFsync.disable(context);
            return true;
        } else if (preference == mFastCharge) {
            if (mFastCharge.isChecked())
                FastCharge.enable(context);
            else
                FastCharge.disable(context);
            return true;
        } else if (preference == mAllowStroke) {
            if (mAllowStroke.isChecked())
                AllowStroke.enable(context);
            else
                AllowStroke.disable(context);
            return true;
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mSweep2Wake) {
            boolean value = ((Boolean)newValue).booleanValue();
            if (value)
                Sweep2Wake.enable(context);
            else
                Sweep2Wake.disable(context);
            return true;
        } else if (preference == mMinDistance) {
            int distance = ((Integer)newValue).intValue();
            MinDistance.setValue(context, distance);
            return true;
        } else if (preference == mRegisterThreshold) {
            int distance = ((Integer)newValue).intValue();
            RegisterThreshold.setValue(context, distance);
            return true;
        } else if (preference == mDoubleTap2Wake) {
            boolean value = ((Boolean)newValue).booleanValue();
            if (value)
                DoubleTap2Wake.enable(context);
            else
                DoubleTap2Wake.disable(context);
            return true;
        } else if (preference == mMinDuration) {
            int duration = ((Integer)newValue).intValue();
            MinDuration.setValue(context, duration);
            return true;
        } else if (preference == mMaxDuration) {
            int duration = ((Integer)newValue).intValue();
            MaxDuration.setValue(context, duration);
            return true;
        }
        return false;
    }
}
