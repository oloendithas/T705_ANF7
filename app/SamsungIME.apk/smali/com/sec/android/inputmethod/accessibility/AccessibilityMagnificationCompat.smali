.class public final Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;
.super Ljava/lang/Object;
.source "AccessibilityMagnificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;,
        Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final JELLY_BEAN_MR1:I = 0x11

.field public static final STRING_SETTING_SECURE_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final TAG:Ljava/lang/String;

.field private static mEnabledMagnification:Z

.field private static sInstance:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;


# instance fields
.field mAccessibilityScreenMagnificationEnabledUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mContextResolver:Landroid/content/ContentResolver;

.field private mMagnificaitonObserver:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

.field private mMagnificationListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->sInstance:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 70
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mAccessibilityScreenMagnificationEnabledUri:Landroid/net/Uri;

    .line 74
    iput-object v1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificaitonObserver:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

    .line 120
    iput-object p1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->init(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mEnabledMagnification:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->notifyStateChanged(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->sInstance:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->sInstance:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    .line 129
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->sInstance:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    return-object v0
.end method

.method public static getMangificationState()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mEnabledMagnification:Z

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    new-instance v2, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;-><init>(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificaitonObserver:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mEnabledMagnification:Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContextResolver:Landroid/content/ContentResolver;

    .line 142
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 145
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public static isEnabledMagnificationGesture(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "retValue":Z
    invoke-static {}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isSupportMagnificationVersion()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    sput-boolean v3, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mEnabledMagnification:Z

    .line 211
    :goto_0
    return v3

    .line 193
    :cond_0
    const-class v4, Landroid/provider/Settings$Secure;

    const-string v5, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED"

    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/compat/CompatUtils;->getFieldFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 196
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 204
    :goto_1
    sput-boolean v1, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mEnabledMagnification:Z

    :cond_1
    move v3, v1

    .line 211
    goto :goto_0

    :cond_2
    move v1, v3

    .line 201
    goto :goto_1
.end method

.method private static isSupportMagnificationVersion()Z
    .locals 2

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyStateChanged(Z)V
    .locals 3
    .param p1, "magnified"    # Z

    .prologue
    .line 112
    iget-object v2, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;

    .line 114
    .local v1, "item":Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;
    invoke-interface {v1, p1}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;->onChangedMagnificationState(Z)V

    goto :goto_0

    .line 117
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public registerMagnificationObserver()V
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isSupportMagnificationVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContextResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificaitonObserver:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContextResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mAccessibilityScreenMagnificationEnabledUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificaitonObserver:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public registerMagnificationStateListener(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public removeAllStateListener()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    :cond_0
    return-void
.end method

.method public unregisterMagnificationObserver()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isSupportMagnificationVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContextResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificaitonObserver:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public unregisterMangificationStateListener(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mMagnificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method
