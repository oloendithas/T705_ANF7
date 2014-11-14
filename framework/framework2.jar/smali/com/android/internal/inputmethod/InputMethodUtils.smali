.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 51
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 3
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v0, 0x1

    .line 405
    if-nez p0, :cond_4

    .line 406
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 186
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2e

    .line 187
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 186
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 190
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 193
    :cond_2c
    const/4 v2, 0x1

    .line 195
    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 15
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    .line 358
    :cond_8
    const/4 v2, 0x0

    .line 401
    :cond_9
    :goto_9
    return-object v2

    .line 360
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 361
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 363
    :cond_1a
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {p3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 365
    .local v5, "partialMatchFound":Z
    const/4 v1, 0x0

    .line 366
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 367
    .local v2, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 368
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v0, :cond_50

    .line 369
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 370
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "subtypeLocale":Ljava/lang/String;
    if-eqz p2, :cond_46

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 374
    :cond_46
    if-nez v2, :cond_49

    .line 375
    move-object v2, v6

    .line 377
    :cond_49
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 379
    move-object v1, v6

    .line 389
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLocale":Ljava/lang/String;
    :cond_50
    if-nez v1, :cond_54

    if-nez p4, :cond_9

    :cond_54
    move-object v2, v1

    .line 401
    goto :goto_9

    .line 381
    .restart local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v7    # "subtypeLocale":Ljava/lang/String;
    :cond_56
    if-nez v5, :cond_60

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 383
    move-object v1, v6

    .line 384
    const/4 v5, 0x1

    .line 368
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_28
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .registers 6

    .prologue
    .line 77
    const-string v0, ""

    .line 79
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_8} :catch_8

    .line 80
    :catch_8
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 82
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_e
    array-length v5, v2

    if-ge v3, v5, :cond_2b

    .line 83
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 86
    move-object v0, v4

    .line 82
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 87
    :cond_21
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2b

    .line 89
    move-object v0, v4

    goto :goto_1e

    .line 95
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :cond_2b
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSystemReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v3, "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .line 132
    .local v0, "auxilialyImeAdded":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 133
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 134
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {p1, v2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isDefaultEnabledIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 135
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 137
    const/4 v0, 0x1

    .line 132
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 141
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_26
    if-eqz v0, :cond_29

    .line 150
    :cond_28
    return-object v3

    .line 144
    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_28

    .line 145
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 146
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHashAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 147
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a
.end method

.method private static getEnabledInputMethodSubtypeList(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;Z)Ljava/util/List;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p3, :cond_10

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p2

    .line 341
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 493
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 497
    .end local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_1a
    :goto_1a
    return-object v0

    .restart local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_1b
    if-eqz p2, :cond_1a

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, ""

    :goto_3a
    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a
.end method

.method private static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 16
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 270
    .local v10, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, "systemLocale":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    :cond_19
    :goto_19
    return-object v3

    .line 272
    :cond_1a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v1, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 275
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v0, :cond_42

    .line 277
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 278
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 279
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, "mode":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3f

    .line 281
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v8    # "mode":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 285
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_42
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_52

    .line 286
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_19

    .line 288
    :cond_52
    const/4 v4, 0x0

    :goto_53
    if-ge v4, v0, :cond_88

    .line 289
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 290
    .restart local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "locale":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8    # "mode":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 301
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 303
    .local v2, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_84

    .line 304
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 288
    .end local v2    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 305
    .restart local v2    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7e
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 307
    :cond_84
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 310
    .end local v2    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "locale":Ljava/lang/String;
    .end local v8    # "mode":Ljava/lang/String;
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_88
    const-string v12, "keyboard"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 312
    .local v5, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    .local v3, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v5, :cond_c6

    const-string v12, "AsciiCapable"

    invoke-virtual {v5, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c6

    .line 315
    const/4 v4, 0x0

    :goto_a4
    if-ge v4, v0, :cond_c6

    .line 316
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 317
    .restart local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 318
    .restart local v8    # "mode":Ljava/lang/String;
    const-string v12, "keyboard"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c3

    const-string v12, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v9, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 320
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    .line 324
    .end local v8    # "mode":Ljava/lang/String;
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c6
    if-nez v5, :cond_19

    .line 325
    const-string v12, "keyboard"

    const/4 v13, 0x1

    invoke-static {p0, v10, v12, v11, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 327
    .local v6, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v6, :cond_19

    .line 328
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_59

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_59

    .line 224
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 225
    .local v1, "i":I
    const/4 v0, -0x1

    .line 227
    .local v0, "firstFoundSystemIme":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    if-ge v3, v1, :cond_35

    .line 228
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 229
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const-string v4, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 247
    .end local v0    # "firstFoundSystemIme":I
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "j":I
    :goto_22
    return-object v2

    .line 227
    .restart local v0    # "firstFoundSystemIme":I
    .restart local v1    # "i":I
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "j":I
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 240
    :cond_26
    if-gez v0, :cond_35

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-nez v4, :cond_35

    .line 242
    move v0, v1

    .line 233
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_35
    if-lez v1, :cond_4c

    .line 234
    add-int/lit8 v1, v1, -0x1

    .line 235
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 236
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_22

    .line 245
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4c
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    move-object v2, v4

    goto :goto_22

    .line 247
    .end local v0    # "firstFoundSystemIme":I
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_59
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 211
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_26

    .line 212
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 213
    .local v1, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 214
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 217
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_26
    return-object v3
.end method

.method public static getStackTrace()Ljava/lang/String;
    .registers 6

    .prologue
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 66
    :catch_b
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 69
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_11
    array-length v4, v1

    if-ge v2, v4, :cond_33

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 73
    :cond_33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .registers 6
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 255
    if-eqz p0, :cond_17

    .line 256
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 257
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 258
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 259
    .local v1, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_14

    .line 264
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :goto_13
    return v0

    .line 257
    .restart local v0    # "i":I
    .restart local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v2    # "subtypeCount":I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 264
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 201
    .local v1, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_16

    .line 202
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 204
    :cond_16
    return-object v2
.end method

.method public static isDefaultEnabledIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .registers 4
    .param p0, "isSystemReady"    # Z
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSystemDefaultIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isSystemAuxilialyImeThatHashAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 6
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 125
    :cond_7
    :goto_7
    return v3

    .line 115
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 119
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v2, :cond_7

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 121
    .local v1, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 122
    const/4 v3, 0x1

    goto :goto_7

    .line 119
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 2
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 3
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboard"

    invoke-static {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .registers 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 251
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isValidSystemDefaultIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .registers 7
    .param p0, "isSystemReady"    # Z
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 156
    if-nez p0, :cond_4

    .line 175
    :cond_3
    :goto_3
    return v0

    .line 159
    :cond_4
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 164
    :try_start_10
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_28} :catch_2d

    move-result v1

    if-eqz v1, :cond_2e

    .line 167
    const/4 v0, 0x1

    goto :goto_3

    .line 169
    :catch_2d
    move-exception v1

    .line 172
    :cond_2e
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 173
    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found no subtypes in a system IME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, "state":I
    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 472
    :cond_9
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 479
    :cond_e
    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 18
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1070032

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 416
    .local v12, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v12, :cond_10

    array-length v13, v12

    if-nez v13, :cond_11

    .line 463
    :cond_10
    return-void

    .line 420
    :cond_11
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 422
    .local v3, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1c
    if-ge v6, v10, :cond_10

    aget-object v11, v2, v6

    .line 426
    .local v11, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 427
    .local v5, "enabledIme":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_3b

    .line 428
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 429
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 430
    const/4 v5, 0x1

    .line 434
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3b
    if-eqz v5, :cond_43

    .line 422
    :cond_3d
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 427
    .restart local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 438
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_43
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3d

    .line 446
    :cond_4f
    const/4 v1, 0x0

    .line 448
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const v13, 0x8000

    :try_start_53
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_58} :catch_6a

    move-result-object v1

    .line 453
    :goto_59
    if-eqz v1, :cond_3d

    .line 457
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_84

    const/4 v8, 0x1

    .line 458
    .local v8, "isSystemPackage":Z
    :goto_62
    if-eqz v8, :cond_3d

    .line 461
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_3d

    .line 450
    .end local v8    # "isSystemPackage":Z
    :catch_6a
    move-exception v4

    .line 451
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "InputMethodUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NameNotFoundException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    .line 457
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_84
    const/4 v8, 0x0

    goto :goto_62
.end method
