.class public Lcom/google/android/voiceime/ImeTrigger;
.super Ljava/lang/Object;
.source "ImeTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# static fields
.field private static final INIT_COUNT:I = -0x1

.field private static final VOICE_IME_PACKAGE_PREFIX:Ljava/lang/String; = "com.google.android"

.field private static final VOICE_IME_SUBTYPE_MODE:Ljava/lang/String; = "voice"

.field private static mSubTypeCount:I


# instance fields
.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/google/android/voiceime/ImeTrigger;->mSubTypeCount:I

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 46
    return-void
.end method

.method private static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private static getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 4
    .param p0, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 91
    .local v1, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {v1}, Lcom/google/android/voiceime/ImeTrigger;->isAuxiliaryIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    .end local v1    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVoiceImeSubtype(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p1, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v1

    .line 78
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 80
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 82
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, -0x1

    sput v0, Lcom/google/android/voiceime/ImeTrigger;->mSubTypeCount:I

    .line 140
    return-void
.end method

.method private static isAuxiliaryIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 108
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 112
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 113
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 124
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    sget v2, Lcom/google/android/voiceime/ImeTrigger;->mSubTypeCount:I

    if-gez v2, :cond_2

    .line 128
    invoke-static {p0}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 130
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    sput v2, Lcom/google/android/voiceime/ImeTrigger;->mSubTypeCount:I

    .line 135
    .end local v0    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    sget v2, Lcom/google/android/voiceime/ImeTrigger;->mSubTypeCount:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onStartInputView()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 55
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 57
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeSubtype(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0
.end method
