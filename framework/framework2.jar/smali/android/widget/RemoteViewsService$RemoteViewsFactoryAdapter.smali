.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private mIsCreated:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .registers 5
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 137
    # getter for: Landroid/widget/RemoteViewsService;->mNoProductShip:Z
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 138
    const-string v0, "RemoteViewsService"

    const-string v1, "appwidget - RemoteViewsFactoryAdatpter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_10
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 141
    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    .line 142
    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .registers 5

    .prologue
    .line 161
    monitor-enter p0

    const/4 v0, 0x0

    .line 163
    .local v0, "count":I
    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v0

    .line 168
    :goto_8
    monitor-exit p0

    return v0

    .line 164
    :catch_a
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 166
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    .line 161
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 210
    monitor-enter p0

    const-wide/16 v1, 0x0

    .line 212
    .local v1, "id":J
    :try_start_3
    iget-object v4, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v4, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    move-result-wide v1

    .line 217
    :goto_9
    monitor-exit p0

    return-wide v1

    .line 213
    :catch_b
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 215
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_9

    .line 210
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_18
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getLoadingView()Landroid/widget/RemoteViews;
    .registers 6

    .prologue
    .line 187
    monitor-enter p0

    const/4 v1, 0x0

    .line 188
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    # getter for: Landroid/widget/RemoteViewsService;->mNoProductShip:Z
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 189
    const-string v3, "RemoteViewsService"

    const-string v4, "appwidget - RemoteViewsFactoryAdatpter.getLoadingView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_24

    .line 192
    :cond_f
    :try_start_f
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_17
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    move-result-object v1

    .line 197
    :goto_15
    monitor-exit p0

    return-object v1

    .line 193
    :catch_17
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 195
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_24

    goto :goto_15

    .line 187
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 171
    monitor-enter p0

    const/4 v1, 0x0

    .line 172
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    # getter for: Landroid/widget/RemoteViewsService;->mNoProductShip:Z
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 173
    const-string v3, "RemoteViewsService"

    const-string v4, "appwidget - RemoteViewsFactoryAdatpter.getViewAt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_2a

    .line 176
    :cond_f
    :try_start_f
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_1b

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1d
    .catchall {:try_start_f .. :try_end_1b} :catchall_2a

    .line 184
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-object v1

    .line 180
    :catch_1d
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 182
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2a

    goto :goto_1b

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewTypeCount()I
    .registers 5

    .prologue
    .line 200
    monitor-enter p0

    const/4 v0, 0x0

    .line 202
    .local v0, "count":I
    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v0

    .line 207
    :goto_8
    monitor-exit p0

    return v0

    .line 203
    :catch_a
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 205
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    .line 200
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized hasStableIds()Z
    .registers 5

    .prologue
    .line 220
    monitor-enter p0

    const/4 v1, 0x0

    .line 222
    .local v1, "hasStableIds":Z
    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v1

    .line 227
    :goto_8
    monitor-exit p0

    return v1

    .line 223
    :catch_a
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 225
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    .line 220
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isCreated()Z
    .registers 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    # getter for: Landroid/widget/RemoteViewsService;->mNoProductShip:Z
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 145
    const-string v0, "RemoteViewsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appwidget - RemoteViewsFactoryAdatpter.isCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_21
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return v0

    .line 144
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDataSetChanged()V
    .registers 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 156
    :goto_6
    monitor-exit p0

    return-void

    .line 152
    :catch_8
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 154
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_6

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDataSetChangedAsync()V
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    # getter for: Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 231
    :try_start_5
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 232
    .local v2, "fc":Landroid/content/Intent$FilterComparison;
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$200()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 233
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$200()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_37

    .line 235
    .local v1, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1e
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2a
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    .line 240
    :goto_21
    :try_start_21
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$200()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_28
    monitor-exit v5

    .line 243
    return-void

    .line 236
    .restart local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :catch_2a
    move-exception v0

    .line 237
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 238
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 242
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v2    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_37
    move-exception v4

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_37

    throw v4
.end method
