.class Landroid/webkitsec/GeolocationPermissionsClassic$2;
.super Landroid/os/Handler;
.source "GeolocationPermissionsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/GeolocationPermissionsClassic;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/GeolocationPermissionsClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/GeolocationPermissionsClassic;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Landroid/webkitsec/GeolocationPermissionsClassic$2;->this$0:Landroid/webkitsec/GeolocationPermissionsClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 101
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_76

    .line 130
    :goto_6
    return-void

    .line 103
    :pswitch_7
    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->nativeGetOrigins()Ljava/util/Set;
    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$000()Ljava/util/Set;

    move-result-object v3

    .line 104
    .local v3, "origins":Ljava/util/Set;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkitsec/ValueCallback;

    .line 105
    .local v1, "callback":Landroid/webkitsec/ValueCallback;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v5, "values":Ljava/util/Map;
    const-string v6, "callback"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v6, "origins"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Landroid/webkitsec/GeolocationPermissionsClassic$2;->this$0:Landroid/webkitsec/GeolocationPermissionsClassic;

    const/4 v7, 0x0

    invoke-static {v8, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->postUIMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$100(Landroid/webkitsec/GeolocationPermissionsClassic;Landroid/os/Message;)V

    goto :goto_6

    .line 111
    .end local v1    # "callback":Landroid/webkitsec/ValueCallback;
    .end local v3    # "origins":Ljava/util/Set;
    .end local v5    # "values":Ljava/util/Map;
    :pswitch_2a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .line 112
    .restart local v5    # "values":Ljava/util/Map;
    const-string/jumbo v6, "origin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "origin":Ljava/lang/String;
    const-string v6, "callback"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkitsec/ValueCallback;

    .line 114
    .restart local v1    # "callback":Landroid/webkitsec/ValueCallback;
    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->nativeGetAllowed(Ljava/lang/String;)Z
    invoke-static {v2}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$200(Ljava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, "allowed":Z
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v4, "retValues":Ljava/util/Map;
    const-string v6, "callback"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v6, "allowed"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v6, p0, Landroid/webkitsec/GeolocationPermissionsClassic$2;->this$0:Landroid/webkitsec/GeolocationPermissionsClassic;

    const/4 v7, 0x1

    invoke-static {v8, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->postUIMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$100(Landroid/webkitsec/GeolocationPermissionsClassic;Landroid/os/Message;)V

    goto :goto_6

    .line 121
    .end local v0    # "allowed":Z
    .end local v1    # "callback":Landroid/webkitsec/ValueCallback;
    .end local v2    # "origin":Ljava/lang/String;
    .end local v4    # "retValues":Ljava/util/Map;
    .end local v5    # "values":Ljava/util/Map;
    :pswitch_61
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->nativeClear(Ljava/lang/String;)V
    invoke-static {v6}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$300(Ljava/lang/String;)V

    goto :goto_6

    .line 124
    :pswitch_69
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->nativeAllow(Ljava/lang/String;)V
    invoke-static {v6}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$400(Ljava/lang/String;)V

    goto :goto_6

    .line 127
    :pswitch_71
    # invokes: Landroid/webkitsec/GeolocationPermissionsClassic;->nativeClearAll()V
    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->access$500()V

    goto :goto_6

    .line 101
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2a
        :pswitch_61
        :pswitch_69
        :pswitch_71
    .end packed-switch
.end method
