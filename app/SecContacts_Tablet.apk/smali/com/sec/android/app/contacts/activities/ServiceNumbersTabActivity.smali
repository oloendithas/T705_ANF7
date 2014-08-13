.class public Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;
.super Landroid/app/TabActivity;
.source "ServiceNumbersTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final SERVICE_NUMBERS_TAB:Ljava/lang/String; = "SerivceNumbersTab"

.field private static SIM_ONE:I = 0x0

.field private static SIM_ZERO:I = 0x0

.field public static final TAB_INDEX_SIM1:I = 0x0

.field public static final TAB_INDEX_SIM2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ServiceNumbersTabActivity"

.field private static mSimInfoChanged:Z

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mCurrentTab:I

.field private mSim1Name:Ljava/lang/String;

.field private mSim2Name:Ljava/lang/String;

.field manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ZERO:I

    .line 64
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mCurrentTab:I

    return-void
.end method

.method public static getSimIconChanged()Z
    .locals 3

    .prologue
    .line 220
    const-string v0, "ServiceNumbersTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSimIconChanged called] mSimInfoChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-boolean v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    return v0
.end method

.method public static setSimIconChanged(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 226
    const-string v0, "ServiceNumbersTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sput-boolean p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    .line 228
    return-void
.end method

.method private setupSim1Tab()V
    .locals 6

    .prologue
    .line 152
    sget-object v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim1"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 153
    .local v1, "Sim1Spec":Landroid/widget/TabHost$TabSpec;
    const-string v2, "ServiceNumbersTabActivity"

    const-string v3, "setupSim1Tab"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "Sim1Intent":Landroid/content/Intent;
    const-string v2, "SerivceNumbersTab"

    const-string v3, "content://icc/sdn"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 165
    sget-object v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 183
    :goto_0
    return-void

    .line 168
    .end local v0    # "Sim1Intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v3, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ZERO:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v5, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ZERO:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .restart local v0    # "Sim1Intent":Landroid/content/Intent;
    const-string v2, "SerivceNumbersTab"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 181
    sget-object v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private setupSim2Tab()V
    .locals 6

    .prologue
    .line 186
    sget-object v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim2"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 187
    .local v1, "Sim2Spec":Landroid/widget/TabHost$TabSpec;
    const-string v2, "ServiceNumbersTabActivity"

    const-string v3, "setupSim2Tab"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, "Sim2Intent":Landroid/content/Intent;
    const-string v2, "SerivceNumbersTab"

    const-string v3, "content://icc2/sdn"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 199
    sget-object v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 217
    :goto_0
    return-void

    .line 202
    .end local v0    # "Sim2Intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v3, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ONE:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v5, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ONE:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .restart local v0    # "Sim2Intent":Landroid/content/Intent;
    const-string v2, "SerivceNumbersTab"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 215
    sget-object v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x4

    .line 75
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "oncreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 88
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setSimIconChanged(Z)V

    .line 90
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 247
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 104
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 107
    const/4 v1, 0x2

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    .line 109
    .local v0, "changed":[Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    move-result-object v0

    .line 114
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->getSimIconChanged()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 125
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 129
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    .line 140
    :cond_2
    :goto_0
    return-void

    .line 116
    :cond_3
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "onResume true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 119
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    .line 124
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setSimIconChanged(Z)V

    goto :goto_0

    .line 107
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 239
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 241
    :cond_0
    return-void
.end method
