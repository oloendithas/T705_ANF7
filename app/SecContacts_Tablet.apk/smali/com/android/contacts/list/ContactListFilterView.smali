.class public Lcom/android/contacts/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivatedBackground:I

.field private mDivider:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mIndent:Landroid/view/View;

.field private mLabel:Landroid/widget/TextView;

.field private mListContainer:Landroid/widget/LinearLayout;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSettingLayout:Landroid/widget/FrameLayout;

.field private mSingleAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private bindView(IIZ)V
    .locals 3
    .param p1, "iconResource"    # I
    .param p2, "textResource"    # I
    .param p3, "dropdown"    # Z

    .prologue
    const/16 v1, 0x8

    .line 286
    if-eqz p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getIconContainer()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 264
    const v2, 0x7f090027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 265
    .local v1, "paddedIconImageView":Landroid/widget/ImageView;
    const v2, 0x7f09019b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 266
    .local v0, "accountImageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_0

    .line 275
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, v0

    .line 281
    .end local v1    # "paddedIconImageView":Landroid/widget/ImageView;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bindView(Z)V
    .locals 9
    .param p1, "dropdown"    # Z

    .prologue
    const v7, 0x7f0e0130

    const v8, 0x7f0e0133

    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 104
    if-eqz p1, :cond_1

    .line 105
    iget v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getActivatedBackground(Landroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    .line 108
    :cond_0
    iget v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 119
    const v2, 0x7f090196

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mListContainer:Landroid/widget/LinearLayout;

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterView;->getIconContainer()Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 121
    const v2, 0x7f09010e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f090198

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    .line 123
    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    .line 124
    const v2, 0x7f090197

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    .line 126
    const v2, 0x7f090199

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    .line 127
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v2, :cond_5

    .line 136
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    const v3, 0x7f0e0020

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_4
    :goto_0
    return-void

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 167
    :pswitch_1
    const v2, 0x7f0e01bb

    invoke-direct {p0, v4, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 142
    :pswitch_2
    const v2, 0x7f020372

    const v3, 0x7f0e01b6

    invoke-direct {p0, v2, v3, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 147
    :pswitch_3
    const v2, 0x7f0206c2

    const v3, 0x7f0e01b7

    invoke-direct {p0, v2, v3, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 152
    :pswitch_4
    const v3, 0x7f0203a2

    if-eqz p1, :cond_6

    const v2, 0x7f0e01b9

    :goto_1
    invoke-direct {p0, v3, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    .line 155
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 156
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_6
    const v2, 0x7f0e01b8

    goto :goto_1

    .line 163
    :pswitch_5
    const v2, 0x7f0e01ba

    invoke-direct {p0, v4, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 171
    :pswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    .line 172
    .local v0, "isKnoxMode":Z
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 174
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :goto_2
    const-string v2, "vnd.sec.contact.phone"

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 180
    const v2, 0x7f09019b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 181
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f0203cb

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :cond_7
    if-eqz v0, :cond_a

    .line 183
    sget-object v2, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sget-object v5, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    if-ne v2, v5, :cond_9

    .line 184
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "KNOX"

    aput-object v7, v6, v4

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f0203cc

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    :goto_4
    if-eqz p1, :cond_4

    .line 247
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 176
    :cond_8
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f0209ba

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 187
    :cond_9
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "KNOX II"

    aput-object v7, v6, v4

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 192
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "2wayflag"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "2wayflag2"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 196
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 198
    :cond_c
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e012f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 201
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_d
    const-string v2, "vnd.sec.contact.phone_personal"

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 202
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 203
    :cond_e
    const-string v2, "vnd.sec.contact.phone_knox"

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 204
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "KNOX"

    aput-object v7, v6, v4

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 205
    :cond_f
    const-string v2, "vnd.sec.contact.phone_knox2"

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 206
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "KNOX II"

    aput-object v7, v6, v4

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 207
    :cond_10
    const-string v2, "vnd.sec.contact.sim"

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 218
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 219
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 221
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 224
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0282

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 226
    :cond_12
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0281

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 228
    :cond_13
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "vnd.sec.contact.sim2"

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 230
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 243
    :cond_14
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 252
    .end local v0    # "isKnoxMode":Z
    :pswitch_7
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f0206b0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    if-eqz p1, :cond_4

    .line 256
    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    if-eqz v2, :cond_15

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_15
    move v2, v4

    goto :goto_5

    .line 140
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getContactListFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 79
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    .line 87
    return-void
.end method
