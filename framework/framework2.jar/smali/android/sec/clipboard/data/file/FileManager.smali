.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleID:I

.field private final mSupportKOX:Z


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 59
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 62
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 66
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 67
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 70
    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .registers 4
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 86
    iput-object p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;II)V
    .registers 6
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 59
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 62
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 74
    iput p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 75
    iput p4, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 77
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 78
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 81
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V
    .registers 6
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;II)V

    .line 91
    iput-object p5, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/data/file/FileManager;)I
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 55
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    return v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/data/file/FileManager;)Z
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    return v0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .registers 4
    .param p1, "format"    # I

    .prologue
    .line 108
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-eq v0, p1, :cond_13

    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v0, :cond_13

    .line 109
    iput p1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 110
    if-nez p1, :cond_14

    .line 111
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET personal mode DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_13
    :goto_13
    return-void

    .line 113
    :cond_14
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET KNOX mode DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x1

    .line 193
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "ClipboardServiceEx"

    const-string v3, "add data..file system"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_c
    const/4 v0, 0x0

    .line 195
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_66

    .line 196
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 198
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 199
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 202
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v2, :cond_3b

    .line 203
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 204
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 207
    :cond_3b
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v3, 0x63

    if-le v2, v3, :cond_65

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_65

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/clipboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 225
    :cond_65
    :goto_65
    return v1

    .line 214
    :cond_66
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 216
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 217
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 220
    const-string v2, "/data/clipboard/knox"

    const-string v3, "c1"

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_65

    .line 225
    :cond_86
    const/4 v1, 0x0

    goto :goto_65
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 5
    .param p1, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x1

    .line 176
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_19

    .line 177
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 178
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 179
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 189
    :goto_18
    return v1

    .line 183
    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_19
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 184
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 185
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_18

    .line 189
    :cond_2d
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_f

    .line 312
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 313
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    :goto_e
    return-void

    .line 315
    :cond_f
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 316
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_e
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 329
    const/4 v0, -0x1

    if-le p1, v0, :cond_27

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 330
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_1a

    .line 331
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 336
    :goto_19
    return-object v0

    .line 333
    :cond_1a
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_19

    .line 336
    :cond_27
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 341
    const/4 v0, -0x1

    if-le p1, v0, :cond_1f

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 342
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_16

    .line 343
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 348
    :goto_15
    return-object v0

    .line 345
    :cond_16
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    goto :goto_15

    .line 348
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 96
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 97
    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_c
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_18

    .line 99
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 101
    :cond_18
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_24

    .line 102
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 104
    :cond_24
    return-void
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_5d

    .line 231
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 232
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 234
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v3, :cond_27

    .line 235
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 236
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 254
    :cond_27
    :goto_27
    if-nez v2, :cond_6b

    .line 255
    const/4 v3, 0x0

    .line 257
    :goto_2a
    return-object v3

    .line 238
    :cond_2b
    const/4 v0, 0x0

    .line 239
    .local v0, "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 240
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 241
    .restart local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_5a

    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 242
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_27

    .line 239
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 250
    .end local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v1    # "i":I
    :cond_5d
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 251
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_27

    .line 257
    :cond_6b
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    goto :goto_2a
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x1

    .line 262
    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v1, :cond_13

    .line 263
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 264
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 273
    :goto_12
    return v0

    .line 268
    :cond_13
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 269
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_12

    .line 273
    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public removeClipboardDB()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_e

    .line 120
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 121
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 122
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 124
    :cond_e
    return-void
.end method

.method public removeKNOXData()V
    .registers 10

    .prologue
    .line 277
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    if-eqz v6, :cond_d1

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v6, :cond_d1

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v6, :cond_d1

    iget-boolean v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v6, :cond_d1

    .line 278
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_32

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KNOX data will be removed. total size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v5, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_d1

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "refreash":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_77

    .line 283
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 284
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/knox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 289
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 290
    .local v1, "dataSize":I
    if-lez v1, :cond_7e

    .line 291
    const/4 v3, 0x1

    .line 294
    :cond_7e
    add-int/lit8 v2, v1, -0x1

    :goto_80
    if-ltz v2, :cond_c5

    .line 295
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 296
    .local v4, "removedIndex":I
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b3

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_b3
    if-ltz v4, :cond_c2

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_c2

    .line 298
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    :cond_c2
    add-int/lit8 v2, v2, -0x1

    goto :goto_80

    .line 302
    .end local v4    # "removedIndex":I
    :cond_c5
    if-eqz v3, :cond_d1

    .line 303
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 304
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeKNOXClipFilder()V

    .line 308
    .end local v1    # "dataSize":I
    .end local v2    # "i":I
    .end local v3    # "refreash":Z
    .end local v5    # "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d1
    return-void
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 8
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 128
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_6a

    .line 129
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 130
    .local v2, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 132
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 137
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 138
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_25

    .line 139
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 142
    :cond_25
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_60

    iget-boolean v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v3, :cond_60

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_60

    .line 145
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 146
    .restart local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_67

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 147
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 148
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_60

    .line 149
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 168
    .end local v0    # "i":I
    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_60
    :goto_60
    if-eqz v2, :cond_8c

    .line 169
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 171
    :goto_66
    return-object v3

    .line 144
    .restart local v0    # "i":I
    .restart local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 156
    .end local v0    # "i":I
    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_6a
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 157
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 159
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 162
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 163
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_60

    .line 164
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_60

    .line 171
    :cond_8c
    const/4 v3, 0x0

    goto :goto_66
.end method

.method public size()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_b

    .line 322
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a
.end method
