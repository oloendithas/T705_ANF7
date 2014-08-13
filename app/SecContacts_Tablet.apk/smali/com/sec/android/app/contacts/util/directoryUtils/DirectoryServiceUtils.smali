.class public Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
.super Ljava/lang/Object;
.source "DirectoryServiceUtils.java"


# static fields
.field public static FEATURE_ENABLED:Z

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->FEATURE_ENABLED:Z

    .line 55
    const-string v0, "DIRECTORY_UTILS"

    sput-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "appContext"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private populateDirectryEntries()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "populateDirectryEntries stub"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "appContext"    # Landroid/app/Activity;

    .prologue
    .line 229
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "activityDestroyed:"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public disableAutoUpdate()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public enableAutoUpdate()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public findLinkedEntriesFromLookupURI(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "contactsUri"    # Landroid/net/Uri;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getEditConfirmationIcon()I
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "getEditConfirmationIcon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, -0x1

    return v0
.end method

.method public getEditConfirmationMessage()I
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "getEditConfirmationMessage"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method public getEditConfirmationNegativeCaption()I
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "getEditConfirmationNegativeCaption"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method public getEditConfirmationPositiveCaption()I
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "getEditConfirmationPositiveCaption"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, -0x1

    return v0
.end method

.method public getEditConfirmationTitle()I
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "getEditConfirmationTitle"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public getIsProgressWidgetInvalid()Z
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "getIsProgressWidgetInvalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public getValidTitlePosition()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method public handleOptionMenuSelection(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoUpdateEnabled()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public isValidDirectoryEntry()Z
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "isValidDirectoryEntry:"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public refreshEntriesFromServer(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "rawIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "refreshEntriesFromServer:"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public setAutoSyncIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "autoSyncIconView"    # Landroid/view/View;

    .prologue
    .line 141
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "setAutoSyncIcon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public setIsProgressWidgetInvalid(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 150
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "setIsProgressWidgetInvalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public setOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "optionMenu"    # Landroid/view/Menu;

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "setOptionsMenu: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public setProgressUpdateView(Landroid/view/View;)V
    .locals 2
    .param p1, "progressView"    # Landroid/view/View;

    .prologue
    .line 173
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "setProgressUpdateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public setValidTitlePosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 244
    return-void
.end method

.method public syncFromDirectoryService()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "syncFromDirectoryService:"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
