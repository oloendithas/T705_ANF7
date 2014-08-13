.class public final Lcom/samsung/android/app/floatingfeature/SFloatingFeature;
.super Ljava/lang/Object;
.source "SFloatingFeature.java"


# static fields
.field public static final BOOL_NOTAG:Z = false

.field public static final INT_NOTAG:I = -0x1

.field public static final STR_NOTAG:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "SFloatingFeature"

.field private static sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;


# instance fields
.field private mFloatingFeatureClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/samsung/android/feature/IFloatingFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mFloatingFeatureClass:Ljava/lang/Class;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->initSFloatingFeature()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/floatingfeature/SFloatingFeature;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    invoke-direct {v0}, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    .line 61
    :cond_0
    sget-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    return-object v0
.end method

.method private initSFloatingFeature()V
    .locals 6

    .prologue
    .line 71
    :try_start_0
    const-string v3, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mFloatingFeatureClass:Ljava/lang/Class;

    .line 73
    iget-object v4, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mFloatingFeatureClass:Ljava/lang/Class;

    const-string v5, "getInstance"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 74
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "instance":Ljava/lang/Object;
    instance-of v3, v1, Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v3, :cond_0

    .line 77
    check-cast v1, Lcom/samsung/android/feature/IFloatingFeature;

    .end local v1    # "instance":Ljava/lang/Object;
    iput-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1}, Lcom/samsung/android/feature/IFloatingFeature;->getEnableStatus(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/feature/IFloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1}, Lcom/samsung/android/feature/IFloatingFeature;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/feature/IFloatingFeature;->getInteger(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1}, Lcom/samsung/android/feature/IFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/feature/IFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
