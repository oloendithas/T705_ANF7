.class public final Lcom/sec/android/app/contacts/model/ContactConstants$ExAppInfo;
.super Ljava/lang/Object;
.source "ContactConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/ContactConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExAppInfo"
.end annotation


# static fields
.field public static final MYFILES_ACT_PICK:Ljava/lang/String; = "PICK_DATA"

.field public static final MYFILES_OPTION_CONTENTTYPE:Ljava/lang/String; = "CONTENT_TYPE"

.field public static final MYFILES_OPTION_FOLDERPATH:Ljava/lang/String; = "FOLDERPATH"

.field public static final MYFILES_OPTION_MAX_SIZE:Ljava/lang/String; = "MAX_FILE_SIZE_IN_KB"

.field public static final MYFILES_PACKNAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field public static final MYFILES_PICKDATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "com.sec.android.app.myfiles"

    const-string v1, "PICK_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/ContactConstants$ExAppInfo;->MYFILES_PICKDATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
