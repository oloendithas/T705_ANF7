.class public Landroid/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setMax(I)V

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    const v1, 0x109009d

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 47
    return-void
.end method

.method private setProgress(IZ)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 137
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_6

    .line 138
    iget p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 140
    :cond_6
    if-gez p1, :cond_9

    .line 141
    const/4 p1, 0x0

    .line 143
    :cond_9
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_17

    .line 144
    iput p1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 145
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    .line 146
    if-eqz p2, :cond_17

    .line 147
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 150
    :cond_17
    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v1, 0x102038d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 62
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 64
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v0

    .line 87
    .local v0, "progress":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_67

    .line 88
    const/16 v2, 0x51

    if-eq p2, v2, :cond_13

    const/16 v2, 0x46

    if-ne p2, v2, :cond_1d

    .line 90
    :cond_13
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 118
    :cond_1c
    :goto_1c
    return v1

    .line 93
    :cond_1d
    const/16 v2, 0x45

    if-ne p2, v2, :cond_2b

    .line 94
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_1c

    .line 97
    :cond_2b
    const/16 v2, 0x15

    if-ne p2, v2, :cond_47

    .line 98
    if-eqz v0, :cond_1c

    .line 102
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 103
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_1c

    .line 107
    :cond_47
    const/16 v2, 0x16

    if-ne p2, v2, :cond_67

    .line 108
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_1c

    .line 112
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 113
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_1c

    .line 118
    :cond_67
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 174
    if-eqz p3, :cond_9

    iget-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_9

    .line 175
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 177
    :cond_9
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 217
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 227
    :goto_f
    return-void

    :cond_10
    move-object v0, p1

    .line 222
    check-cast v0, Landroid/preference/SeekBarPreference$SavedState;

    .line 223
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 225
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 226
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_f
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 201
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 210
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_a
    return-object v1

    .line 207
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_b
    new-instance v0, Landroid/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 208
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    .line 209
    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 210
    goto :goto_a
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-eqz p1, :cond_c

    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 77
    return-void

    .line 75
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_c
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 182
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 187
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_e

    .line 188
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 190
    :cond_e
    return-void
.end method

.method public setMax(I)V
    .registers 3
    .param p1, "max"    # I

    .prologue
    .line 126
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_9

    .line 127
    iput p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 128
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 130
    :cond_9
    return-void
.end method

.method public setProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 134
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 162
    .local v0, "progress":I
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_16

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 169
    :cond_16
    :goto_16
    return-void

    .line 166
    :cond_17
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_16
.end method
