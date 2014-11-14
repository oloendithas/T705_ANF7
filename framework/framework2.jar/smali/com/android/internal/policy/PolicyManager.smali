.class public final Lcom/android/internal/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final POLICY_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.policy.impl.Policy"

.field private static final sPolicy:Lcom/android/internal/policy/IPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 38
    :try_start_0
    const-string v2, "com.android.internal.policy.impl.Policy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IPolicy;

    sput-object v2, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_e} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_21

    .line 50
    return-void

    .line 40
    :catch_f
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_18
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 46
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_21
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewSubWindow(Landroid/content/Context;)Landroid/view/Window;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewSubWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/IPolicy;->makeNewWindow(Landroid/content/Context;Z)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindow(Landroid/content/Context;Z)Landroid/view/Window;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needMultiPhoneWindow"    # Z

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/IPolicy;->makeNewWindow(Landroid/content/Context;Z)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindowManager()Landroid/view/WindowManagerPolicy;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0}, Lcom/android/internal/policy/IPolicy;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v0

    return-object v0
.end method
