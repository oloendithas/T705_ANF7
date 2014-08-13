.class public abstract Lcom/android/server/ssrm/fgapps/AbsGovernor;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "AbsGovernor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;,
        Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field sysfsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;",
            ">;"
        }
    .end annotation
.end field

.field syspropList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 29
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x3b
        0x18
        0x9
        0x3d
        0x15
        0xc
        0x1f
        0x8
        0x14
        0x15
        0x8
    .end array-data
.end method


# virtual methods
.method addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    const/4 v1, -0x1

    .line 74
    :goto_0
    return v1

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 63
    .local v1, "i":I
    new-instance v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    invoke-direct {v2}, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;-><init>()V

    .line 64
    .local v2, "sysfs":Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    iput-object p1, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mPath:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mIsNodeExist:Z

    .line 67
    iget-boolean v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mIsNodeExist:Z

    if-eqz v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mDefaultValue:Ljava/lang/String;

    .line 72
    :goto_2
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 70
    :cond_3
    iput-object p2, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    iput-object p2, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    iput-object p2, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mDefaultValue:Ljava/lang/String;

    goto :goto_2
.end method

.method addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 81
    :cond_0
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    .local v0, "i":I
    new-instance v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    invoke-direct {v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;-><init>()V

    .line 86
    .local v1, "sysprop":Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
    iput-object p1, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mKey:Ljava/lang/String;

    .line 87
    iput-object p2, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mDefaultValue:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    .line 88
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final setSysfs(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    .line 96
    .local v0, "sysfs":Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-object p2, v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    goto :goto_0
.end method

.method final setSystemProperties(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    .line 104
    .local v0, "sysprop":Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iput-object p2, v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    goto :goto_0
.end method

.method setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    .line 146
    return-void
.end method

.method update()V
    .locals 6

    .prologue
    .line 113
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    .line 114
    .local v1, "sysfs":Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mDefaultValue:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    goto :goto_0

    .line 117
    .end local v1    # "sysfs":Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    .line 118
    .local v2, "sysprop":Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mDefaultValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    goto :goto_1

    .line 121
    .end local v2    # "sysprop":Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->updateParameterByScenario()V

    .line 123
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    .line 124
    .restart local v1    # "sysfs":Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    :cond_3
    iget-boolean v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mIsNodeExist:Z

    if-eqz v3, :cond_4

    .line 126
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mPath:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_3
    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    goto :goto_2

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => permission denied."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 135
    .end local v1    # "sysfs":Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    :cond_5
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    .line 136
    .restart local v2    # "sysprop":Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 138
    :cond_7
    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mKey:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    goto :goto_4

    .line 142
    .end local v2    # "sysprop":Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
    :cond_8
    return-void
.end method

.method abstract updateParameterByScenario()V
.end method
