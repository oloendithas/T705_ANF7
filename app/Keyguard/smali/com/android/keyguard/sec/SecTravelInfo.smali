.class public Lcom/android/keyguard/sec/SecTravelInfo;
.super Landroid/widget/LinearLayout;
.source "SecTravelInfo.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "SecTravelInfo"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecTravelInfo;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "SecTravelInfo"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecTravelInfo;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string v0, "SecTravelInfo"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecTravelInfo;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 85
    iget-object v2, p0, Lcom/android/keyguard/sec/SecTravelInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x1

    .line 91
    :goto_33
    return v1

    .line 88
    :cond_34
    iget-object v2, p0, Lcom/android/keyguard/sec/SecTravelInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private isTravelWallpaperSet()Z
    .registers 5

    .prologue
    .line 72
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "wallpaperPath":Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "/com.samsung.android.service.travel/files/images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecTravelInfo;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 75
    const/4 v1, 0x1

    .line 77
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private refreshTravelInfo()V
    .registers 5

    .prologue
    .line 57
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/sec/SecTravelInfo;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_b

    .line 69
    :cond_a
    :goto_a
    return-void

    .line 60
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecTravelInfo;->isTravelWallpaperSet()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 61
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "locationName":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 63
    iget-object v1, p0, Lcom/android/keyguard/sec/SecTravelInfo;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/android/keyguard/sec/SecTravelInfo;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 67
    .end local v0    # "locationName":Ljava/lang/String;
    :cond_32
    iget-object v1, p0, Lcom/android/keyguard/sec/SecTravelInfo;->mTravelText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecTravelInfo;->refreshTravelInfo()V

    .line 49
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 54
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 42
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecTravelInfo;->mTravelText:Landroid/widget/TextView;

    .line 43
    return-void
.end method
