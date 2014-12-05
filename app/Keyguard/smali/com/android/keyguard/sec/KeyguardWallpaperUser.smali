.class public Lcom/android/keyguard/sec/KeyguardWallpaperUser;
.super Ljava/lang/Object;
.source "KeyguardWallpaperUser.java"


# instance fields
.field private mImagePath:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->userId:I

    .line 24
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    .line 8
    return-void
.end method
