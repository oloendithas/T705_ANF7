.class public Lcom/android/server/ssrm/fgapps/CameraPowerSaving;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "CameraPowerSaving.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_BLACKBOX:I

.field final ID_VTCALL:I

.field final TAG:Ljava/lang/String;

.field mBlackboxList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChatOnVtCall:Z

.field mPhoneVtCall:Z

.field mVideocallList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    const/16 v3, 0x15

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 41
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 28
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    .line 142
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    .line 42
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 45
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_BLACKBOX:I

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_VTCALL:I

    .line 57
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 61
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 65
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 70
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 78
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 82
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 90
    new-array v0, v2, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 94
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 98
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 104
    new-array v0, v4, [I

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addVideocallPackage(Ljava/lang/String;)V

    .line 108
    return-void

    .line 28
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x39
        0x1b
        0x17
        0x1f
        0x8
        0x1b
        0x2a
        0x15
        0xd
        0x1f
        0x8
        0x29
        0x1b
        0xc
        0x13
        0x14
        0x1d
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x9
        0x3
        0x9
        0x54
        0x19
        0x1b
        0x17
        0x1f
        0x8
        0x1b
        0x17
        0x15
        0x1e
        0x1f
        0x54
        0x18
        0x16
        0x1b
        0x19
        0x11
        0x18
        0x15
        0x2
    .end array-data

    .line 51
    :array_2
    .array-data 4
        0x9
        0x3
        0x9
        0x54
        0x19
        0x1b
        0x17
        0x1f
        0x8
        0x1b
        0x17
        0x15
        0x1e
        0x1f
        0x54
        0xc
        0xe
        0x19
        0x1b
        0x16
        0x16
    .end array-data

    .line 57
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x16
        0x15
        0x19
        0x14
        0x1b
        0x16
        0x16
        0x54
        0x31
        0x13
        0x17
        0x3d
        0x13
        0x29
        0x1b
    .end array-data

    .line 61
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x14
        0x9
        0x15
        0x1c
        0xe
        0x54
        0x16
        0x1d
        0xf
        0x14
        0x1b
        0xc
        0x13
    .end array-data

    .line 65
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x12
        0x13
        0x14
        0x11
        0xd
        0x1b
        0x8
        0x1f
        0x54
        0x13
        0x14
        0x1b
        0xc
        0x13
        0x1b
        0x13
        0x8
    .end array-data

    .line 70
    :array_6
    .array-data 4
        0x11
        0x8
        0x54
        0x17
        0x1b
        0xa
        0xa
        0x1f
        0x8
        0x9
        0x54
        0x3b
        0xe
        0x16
        0x1b
        0x14
        0x29
        0x17
        0x1b
        0x8
        0xe
    .end array-data

    .line 74
    :array_7
    .array-data 4
        0x11
        0xe
        0x54
        0x14
        0x1b
        0xc
        0x13
    .end array-data

    .line 78
    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x35
        0x34
        0x29
        0x54
        0x37
        0x1b
        0xa
        0xa
        0x16
        0x1f
    .end array-data

    .line 82
    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x14
        0x12
        0x14
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x14
        0x17
        0x1b
        0xa
    .end array-data

    .line 86
    :array_a
    .array-data 4
        0x11
        0x8
        0x54
        0x19
        0x15
        0x54
        0x1e
        0x48
        0x54
        0x11
        0x13
        0x9
        0xe
        0x13
        0x8
        0x14
        0x1e
    .end array-data

    .line 90
    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x12
        0x15
        0xc
        0x1b
        0x14
        0x9
        0x54
        0x1b
        0xf
        0xe
        0x15
        0x1d
        0xf
        0x1b
        0x8
        0x1e
    .end array-data

    .line 94
    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x15
        0x11
        0x1f
        0xc
        0x13
        0x1b
        0x14
        0x54
        0x15
        0xa
        0xe
        0x13
        0x17
        0xf
        0x9
    .end array-data

    .line 98
    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0xe
        0x54
        0x15
        0x16
        0x16
        0x1f
        0x12
        0x17
        0x1b
        0xa
    .end array-data

    .line 104
    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data
.end method

.method private addBlackboxPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method private addVideocallPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method private isBlackboxPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideocallPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 163
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v0, "Phone_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0
.end method

.method updateParameterByScenario()V
    .locals 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->isBlackboxPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "blackbox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BlackBox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "l001mtm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 132
    .local v0, "blackboxFg":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->isVideocallPackage(Ljava/lang/String;)Z

    move-result v2

    .line 134
    .local v2, "vtcallFg":Z
    if-eqz v0, :cond_1

    .line 135
    iget v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_BLACKBOX:I

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSystemProperties(ILjava/lang/String;)V

    .line 137
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 138
    :cond_2
    iget v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_VTCALL:I

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSystemProperties(ILjava/lang/String;)V

    .line 140
    :cond_3
    return-void

    .line 130
    .end local v0    # "blackboxFg":Z
    .end local v2    # "vtcallFg":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
