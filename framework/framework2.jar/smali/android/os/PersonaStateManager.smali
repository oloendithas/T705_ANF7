.class public Landroid/os/PersonaStateManager;
.super Ljava/lang/Object;
.source "PersonaStateManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PersonaStateManager"


# instance fields
.field private context:Landroid/content/Context;

.field private service:Landroid/content/pm/IPersonaStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaStateHandler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaStateHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/os/PersonaStateManager;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public mapToNormalizedState(I)I
    .registers 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v1, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    if-nez v1, :cond_5

    .line 31
    .end local p1    # "state":I
    :goto_4
    return p1

    .line 27
    .restart local p1    # "state":I
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_4

    .line 28
    :catch_c
    move-exception v0

    .line 29
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PersonaStateManager"

    const-string/jumbo v2, "mapToNormalizedState problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public postEvent(ILandroid/content/pm/PersonaEvent;)I
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "event"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 47
    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    if-nez v2, :cond_6

    .line 55
    :goto_5
    return v1

    .line 51
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPersonaStateHandler;->postEventForPersona(ILandroid/content/pm/PersonaEvent;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 52
    :catch_d
    move-exception v0

    .line 53
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "PersonaStateManager"

    const-string/jumbo v3, "postEvent problem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public postEvent(Landroid/content/pm/PersonaEvent;)I
    .registers 6
    .param p1, "event"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 35
    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    if-nez v2, :cond_6

    .line 43
    :goto_5
    return v1

    .line 39
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v2, p1}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 40
    :catch_d
    move-exception v0

    .line 41
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "PersonaStateManager"

    const-string/jumbo v3, "postEvent problem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
