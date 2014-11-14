.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final STATE_APPEND:I = 0x1

.field private static final STATE_MODIFY_DIGITS:I = 0x2

.field private static final STATE_OTHER:I = 0x3

.field private static final STATE_REMOVE_LAST:I


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mState:I

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 98
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_e
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 100
    return-void
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .registers 4
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .prologue
    .line 218
    if-eqz p2, :cond_9

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 228
    move v1, p2

    .local v1, "i":I
    :goto_1
    add-int v2, p2, p3

    if-ge v1, v2, :cond_14

    .line 229
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 230
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_11

    .line 231
    const/4 v2, 0x1

    .line 234
    .end local v0    # "c":C
    :goto_10
    return v2

    .line 228
    .restart local v0    # "c":C
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v0    # "c":C
    :cond_14
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 192
    add-int/lit8 v1, p2, -0x1

    .line 193
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 194
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 195
    const/4 v5, 0x0

    .line 196
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 197
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 198
    .local v6, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v6, :cond_29

    .line 199
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 200
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 201
    if-eqz v5, :cond_22

    .line 202
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 203
    const/4 v3, 0x0

    .line 205
    :cond_22
    move v5, v0

    .line 207
    :cond_23
    if-ne v4, v1, :cond_26

    .line 208
    const/4 v3, 0x1

    .line 198
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 211
    .end local v0    # "c":C
    :cond_29
    if-eqz v5, :cond_2f

    .line 212
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_2f
    return-object v2
.end method

.method private stopFormatting()V
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 224
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 225
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v2, :cond_13

    .line 164
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_11

    :goto_d
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_49

    .line 183
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    move v0, v1

    .line 164
    goto :goto_d

    .line 167
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_f

    .line 171
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "formatted":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 173
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v6

    .line 174
    .local v6, "rememberedPos":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 175
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 179
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 181
    :cond_45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_49

    goto :goto_f

    .line 162
    .end local v3    # "formatted":Ljava/lang/String;
    .end local v6    # "rememberedPos":I
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_9

    .line 128
    :cond_8
    :goto_8
    return-void

    .line 115
    :cond_9
    if-nez p3, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_8

    .line 118
    :cond_15
    if-nez p4, :cond_25

    add-int v0, p2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_25

    if-lez p3, :cond_25

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_8

    .line 121
    :cond_25
    if-lez p3, :cond_31

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_31

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_8

    .line 125
    :cond_31
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    goto :goto_8
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x3

    .line 132
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_a

    .line 158
    :cond_9
    :goto_9
    return-void

    .line 142
    :cond_a
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    if-ne v0, v2, :cond_19

    .line 143
    if-lez p4, :cond_19

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_19

    .line 145
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    .line 149
    :cond_19
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    if-lez p4, :cond_2a

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 151
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_9

    .line 152
    :cond_2a
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mState:I

    if-ne v0, v2, :cond_9

    .line 155
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_9
.end method
