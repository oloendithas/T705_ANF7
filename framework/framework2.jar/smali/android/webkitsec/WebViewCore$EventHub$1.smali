.class Landroid/webkitsec/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore$EventHub;)V
    .registers 2

    .prologue
    .line 1853
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 97
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1865
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_160c

    .line 1882
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_7a

    .line 3034
    :cond_1f
    :goto_1f
    return-void

    .line 1867
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mTid:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    # setter for: Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$1102(Landroid/webkitsec/WebViewCore$EventHub;I)I

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1870
    invoke-static {}, Landroid/webkitsec/WebViewCore;->pauseTimers()V

    .line 1871
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$1300(Landroid/webkitsec/WebViewCore;I)V

    goto :goto_1f

    .line 1877
    :pswitch_63
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$1100(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1878
    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumeTimers()V

    goto :goto_1f

    .line 1889
    :cond_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8d

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1f

    .line 1897
    :cond_8d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_1614

    goto :goto_1f

    .line 1926
    :sswitch_95
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRevealSelection(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$1800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 1899
    :sswitch_aa
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1500(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_1f

    .line 1905
    :sswitch_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    monitor-enter v4

    .line 1914
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->destroy()V

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v5, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2, v5}, Landroid/webkitsec/WebViewCore;->access$1602(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/BrowserFrame;)Landroid/webkitsec/BrowserFrame;

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1700(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->onDestroyed()V

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v5, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2, v5}, Landroid/webkitsec/WebViewCore;->access$402(Landroid/webkitsec/WebViewCore;I)I

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-static {v2}, Landroid/webkitsec/WebCoreThreadWatchdog;->unregisterWebView(Landroid/webkitsec/WebViewClassic;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v5, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2, v5}, Landroid/webkitsec/WebViewCore;->access$1402(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewClassic;

    .line 1922
    monitor-exit v4

    goto/16 :goto_1f

    :catchall_104
    move-exception v2

    monitor-exit v4
    :try_end_106
    .catchall {:try_start_bc .. :try_end_106} :catchall_104

    throw v2

    .line 1931
    :sswitch_107
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_14e

    .line 1932
    const/16 v93, 0x0

    .line 1939
    .local v93, "xPercent":F
    :goto_10f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v93

    # invokes: Landroid/webkitsec/WebViewCore;->nativeScrollFocusedTextInput(IFI)V
    invoke-static {v2, v4, v0, v5}, Landroid/webkitsec/WebViewCore;->access$1900(Landroid/webkitsec/WebViewCore;IFI)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$2000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewCore$EventHub;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x2ce

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 1934
    .end local v93    # "xPercent":F
    :cond_14e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v93

    .restart local v93    # "xPercent":F
    goto :goto_10f

    .line 1949
    .end local v93    # "xPercent":F
    :sswitch_159
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeupdateTextSelection(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 1955
    :sswitch_16e
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1956
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkitsec/WebViewCore$GetUrlData;

    .line 1957
    .local v71, "param":Landroid/webkitsec/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v71

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v71

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    # invokes: Landroid/webkitsec/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$2300(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1f

    .line 1962
    .end local v71    # "param":Landroid/webkitsec/WebViewCore$GetUrlData;
    :sswitch_190
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1963
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkitsec/WebViewCore$PostUrlData;

    .line 1964
    .local v71, "param":Landroid/webkitsec/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v71

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v71

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v5}, Landroid/webkitsec/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_1f

    .line 1968
    .end local v71    # "param":Landroid/webkitsec/WebViewCore$PostUrlData;
    :sswitch_1b6
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1969
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/webkitsec/WebViewCore$BaseUrlData;

    .line 1970
    .local v63, "loadParams":Landroid/webkitsec/WebViewCore$BaseUrlData;
    move-object/from16 v0, v63

    iget-object v3, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1971
    .local v3, "baseUrl":Ljava/lang/String;
    if-eqz v3, :cond_217

    .line 1972
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v54

    .line 1973
    .local v54, "i":I
    if-lez v54, :cond_217

    .line 1981
    const/4 v2, 0x0

    move/from16 v0, v54

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v86

    .line 1982
    .local v86, "scheme":Ljava/lang/String;
    const-string v2, "http"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_217

    const-string v2, "ftp"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_217

    const-string v2, "about"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_217

    const-string v2, "javascript"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_217

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v86

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$2400(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    .line 1991
    .end local v54    # "i":I
    .end local v86    # "scheme":Ljava/lang/String;
    :cond_217
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v63

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v6, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v7, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkitsec/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2004
    .end local v3    # "baseUrl":Ljava/lang/String;
    .end local v63    # "loadParams":Landroid/webkitsec/WebViewCore$BaseUrlData;
    :sswitch_249
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_276

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_276

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    .line 2009
    :cond_276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->stopLoading()V

    goto/16 :goto_1f

    .line 2013
    :sswitch_281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->reload(Z)V

    goto/16 :goto_1f

    .line 2017
    :sswitch_291
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    # invokes: Landroid/webkitsec/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkitsec/WebViewCore;->access$2600(Landroid/webkitsec/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1f

    .line 2021
    :sswitch_2a7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkitsec/WebViewCore;->access$2600(Landroid/webkitsec/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1f

    .line 2025
    :sswitch_2bd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->keyPress(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2700(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2029
    :sswitch_2cc
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    # invokes: Landroid/webkitsec/WebViewCore;->viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V
    invoke-static {v4, v2}, Landroid/webkitsec/WebViewCore;->access$2800(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic$ViewSizeData;)V

    goto/16 :goto_1f

    .line 2035
    :sswitch_2dd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/graphics/Point;

    .line 2036
    .local v73, "pt":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_30a

    const/4 v2, 0x1

    :goto_2fd
    move-object/from16 v0, v73

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v73

    iget v10, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v5, v2, v7, v10}, Landroid/webkitsec/WebViewCore;->access$2900(Landroid/webkitsec/WebViewCore;IZII)V

    goto/16 :goto_1f

    :cond_30a
    const/4 v2, 0x0

    goto :goto_2fd

    .line 2043
    .end local v73    # "pt":Landroid/graphics/Point;
    :sswitch_30c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedText(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3000(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2044
    .local v89, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebViewClassic;->setSelectedText(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 2050
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_331
    new-instance v56, Landroid/graphics/Rect;

    invoke-direct/range {v56 .. v56}, Landroid/graphics/Rect;-><init>()V

    .line 2051
    .local v56, "inputTextBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v56

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetInputTextBounds(ILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$3100(Landroid/webkitsec/WebViewCore;ILandroid/graphics/Rect;)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1f

    .line 2057
    .end local v56    # "inputTextBounds":Landroid/graphics/Rect;
    :sswitch_35e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckSpellingOfWordAtPosition(III)Z
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$3200(Landroid/webkitsec/WebViewCore;III)Z

    move-result v61

    .line 2058
    .local v61, "isWordMisspelled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    move/from16 v0, v61

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebViewClassic;->setSpellCheckResult(Z)V

    goto/16 :goto_1f

    .line 2061
    .end local v61    # "isWordMisspelled":Z
    :sswitch_38b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    .line 2062
    .local v91, "word":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v91

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUnmarkWord(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$3300(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1f

    .line 2066
    .end local v91    # "word":Ljava/lang/String;
    :sswitch_3aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/graphics/Rect;

    .line 2067
    .local v74, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v74

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v74

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Rect;->height()I

    move-result v9

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetGlobalBounds(IIIII)V
    invoke-static/range {v4 .. v9}, Landroid/webkitsec/WebViewCore;->access$3400(Landroid/webkitsec/WebViewCore;IIIII)V

    goto/16 :goto_1f

    .line 2074
    .end local v74    # "r":Landroid/graphics/Rect;
    :sswitch_3d7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_40e

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_40e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_40e

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->reload(Z)V

    goto/16 :goto_1f

    .line 2079
    :cond_40e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->goBackOrForward(I)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRecalcWidthAndForceLayout(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2087
    :sswitch_434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->stopLoading()V

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->restoreState(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3600(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2093
    :sswitch_44c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativePause(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3700(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2097
    :sswitch_461
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeResume(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2101
    :sswitch_476
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->clearCache(Z)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3900(Landroid/webkitsec/WebViewCore;Z)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFreeMemory(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4000(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2107
    :sswitch_495
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSimulateDelKeyForCount(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$4100(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 2113
    :sswitch_4ca
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2114
    .local v28, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2115
    .local v72, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 2116
    .local v40, "count":I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Landroid/webkitsec/HtmlComposerView$CursorDirection;

    sget-object v4, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    if-ne v2, v4, :cond_513

    const/16 v57, 0x1

    .line 2117
    .local v57, "isBefore":Z
    :goto_4ea
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v40

    move/from16 v1, v57

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetTextAroundCursor(IIZ)Ljava/lang/String;
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$4200(Landroid/webkitsec/WebViewCore;IIZ)Ljava/lang/String;

    move-result-object v89

    .line 2119
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2121
    :try_start_503
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2122
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2124
    monitor-exit v28

    goto/16 :goto_1f

    :catchall_510
    move-exception v2

    monitor-exit v28
    :try_end_512
    .catchall {:try_start_503 .. :try_end_512} :catchall_510

    throw v2

    .line 2116
    .end local v57    # "isBefore":Z
    .end local v89    # "str":Ljava/lang/String;
    :cond_513
    const/16 v57, 0x0

    goto :goto_4ea

    .line 2131
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v40    # "count":I
    .end local v72    # "params":[Ljava/lang/Object;
    :sswitch_516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDeleteSurroundingText(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$4300(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2136
    :sswitch_533
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2140
    .local v23, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffset(I)Landroid/graphics/Point;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4400(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Point;

    move-result-object v84

    .line 2142
    .local v84, "result":Landroid/graphics/Point;
    monitor-enter v23

    .line 2144
    :try_start_550
    move-object/from16 v0, v23

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2145
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 2147
    monitor-exit v23

    goto/16 :goto_1f

    :catchall_55d
    move-exception v2

    monitor-exit v23
    :try_end_55f
    .catchall {:try_start_550 .. :try_end_55f} :catchall_55d

    throw v2

    .line 2152
    .end local v23    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v84    # "result":Landroid/graphics/Point;
    :sswitch_560
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffsetImage(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2158
    :sswitch_575
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2159
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetBodyText(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4600(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2161
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2163
    :try_start_592
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2164
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2166
    monitor-exit v28

    goto/16 :goto_1f

    :catchall_59f
    move-exception v2

    monitor-exit v28
    :try_end_5a1
    .catchall {:try_start_592 .. :try_end_5a1} :catchall_59f

    throw v2

    .line 2172
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_5a2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2173
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetBodyHTML(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4700(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2175
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2177
    :try_start_5bf
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2178
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2180
    monitor-exit v28

    goto/16 :goto_1f

    :catchall_5cc
    move-exception v2

    monitor-exit v28
    :try_end_5ce
    .catchall {:try_start_5bf .. :try_end_5ce} :catchall_5cc

    throw v2

    .line 2185
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_5cf
    const/16 v58, 0x0

    .line 2186
    .local v58, "isBodyEmpty":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2187
    .local v26, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetBodyEmpty(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4800(Landroid/webkitsec/WebViewCore;I)Z

    move-result v58

    .line 2189
    monitor-enter v26

    .line 2191
    :try_start_5ee
    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2192
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2194
    monitor-exit v26

    goto/16 :goto_1f

    :catchall_5fd
    move-exception v2

    monitor-exit v26
    :try_end_5ff
    .catchall {:try_start_5ee .. :try_end_5ff} :catchall_5fd

    throw v2

    .line 2199
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v58    # "isBodyEmpty":Z
    :sswitch_600
    const/16 v88, -0x1

    .line 2200
    .local v88, "selectedType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2201
    .local v27, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeContentSelectionType(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4900(Landroid/webkitsec/WebViewCore;I)I

    move-result v88

    .line 2203
    monitor-enter v27

    .line 2205
    :try_start_61f
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2206
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2208
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_62e
    move-exception v2

    monitor-exit v27
    :try_end_630
    .catchall {:try_start_61f .. :try_end_630} :catchall_62e

    throw v2

    .line 2215
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v88    # "selectedType":I
    :sswitch_631
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2216
    .local v24, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2217
    .restart local v72    # "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v49, v72, v2

    check-cast v49, Ljava/lang/Boolean;

    .line 2218
    .local v49, "giveContentRect":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetCursorRect(IZ)Landroid/graphics/Rect;
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$5000(Landroid/webkitsec/WebViewCore;IZ)Landroid/graphics/Rect;

    move-result-object v41

    .line 2220
    .local v41, "cursurRect":Landroid/graphics/Rect;
    monitor-enter v24

    .line 2222
    :try_start_65b
    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2223
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 2225
    monitor-exit v24

    goto/16 :goto_1f

    :catchall_668
    move-exception v2

    monitor-exit v24
    :try_end_66a
    .catchall {:try_start_65b .. :try_end_66a} :catchall_668

    throw v2

    .line 2232
    .end local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v41    # "cursurRect":Landroid/graphics/Rect;
    .end local v49    # "giveContentRect":Ljava/lang/Boolean;
    .end local v72    # "params":[Ljava/lang/Object;
    :sswitch_66b
    const/16 v59, 0x0

    .line 2233
    .local v59, "isCommandSuces":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkitsec/WebViewClassic$CmdVal;

    .line 2234
    .local v37, "cmdVal":Landroid/webkitsec/WebViewClassic$CmdVal;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v7, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeExecCommand(ILjava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$5100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 2236
    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "Copy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6cd

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "Cut"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6cd

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "Delete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6cd

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "DeleteForward"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6cd

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "MoveToEndOfLine"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e0

    .line 2241
    :cond_6cd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    .line 2244
    :cond_6e0
    monitor-enter v37

    .line 2246
    :try_start_6e1
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notify()V

    .line 2248
    monitor-exit v37

    goto/16 :goto_1f

    :catchall_6e7
    move-exception v2

    monitor-exit v37
    :try_end_6e9
    .catchall {:try_start_6e1 .. :try_end_6e9} :catchall_6e7

    throw v2

    .line 2253
    .end local v37    # "cmdVal":Landroid/webkitsec/WebViewClassic$CmdVal;
    .end local v59    # "isCommandSuces":Z
    :sswitch_6ea
    const/16 v32, 0x0

    .line 2254
    .local v32, "canUndo":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2255
    .restart local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCanUndo(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5300(Landroid/webkitsec/WebViewCore;I)Z

    move-result v32

    .line 2256
    monitor-enter v26

    .line 2258
    :try_start_709
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2259
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2261
    monitor-exit v26

    goto/16 :goto_1f

    :catchall_718
    move-exception v2

    monitor-exit v26
    :try_end_71a
    .catchall {:try_start_709 .. :try_end_71a} :catchall_718

    throw v2

    .line 2267
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v32    # "canUndo":Z
    :sswitch_71b
    const/16 v31, 0x0

    .line 2268
    .local v31, "canRedo":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2269
    .restart local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCanRedo(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5400(Landroid/webkitsec/WebViewCore;I)Z

    move-result v31

    .line 2270
    monitor-enter v26

    .line 2272
    :try_start_73a
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2273
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2275
    monitor-exit v26

    goto/16 :goto_1f

    :catchall_749
    move-exception v2

    monitor-exit v26
    :try_end_74b
    .catchall {:try_start_73a .. :try_end_74b} :catchall_749

    throw v2

    .line 2280
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v31    # "canRedo":Z
    :sswitch_74c
    const/16 v60, 0x0

    .line 2281
    .local v60, "isOutside":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2282
    .local v22, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Landroid/graphics/Rect;Ljava/lang/Boolean;>;"
    new-instance v80, Landroid/graphics/Rect;

    invoke-direct/range {v80 .. v80}, Landroid/graphics/Rect;-><init>()V

    .line 2283
    .local v80, "rect3":Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2285
    .restart local v72    # "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v92

    .line 2286
    .local v92, "x":I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v94

    .line 2288
    .local v94, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v92

    move/from16 v1, v94

    # invokes: Landroid/webkitsec/WebViewCore;->nativeisTouchedOutside(III)Z
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$5500(Landroid/webkitsec/WebViewCore;III)Z

    move-result v60

    .line 2289
    monitor-enter v22

    .line 2291
    :try_start_78a
    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2292
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 2294
    monitor-exit v22

    goto/16 :goto_1f

    :catchall_799
    move-exception v2

    monitor-exit v22
    :try_end_79b
    .catchall {:try_start_78a .. :try_end_79b} :catchall_799

    throw v2

    .line 2299
    .end local v22    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Landroid/graphics/Rect;Ljava/lang/Boolean;>;"
    .end local v60    # "isOutside":Z
    .end local v72    # "params":[Ljava/lang/Object;
    .end local v80    # "rect3":Landroid/graphics/Rect;
    .end local v92    # "x":I
    .end local v94    # "y":I
    :sswitch_79c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUndoRedoStateReset(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5600(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2303
    :sswitch_7b1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v90, v0

    check-cast v90, Ljava/lang/String;

    .line 2304
    .local v90, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v90

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCopyAndSaveImage(ILjava/lang/String;)Z
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$5700(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Z

    goto/16 :goto_1f

    .line 2311
    .end local v90    # "url":Ljava/lang/String;
    :sswitch_7d0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2315
    :sswitch_7dc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2316
    .local v25, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetFullMarkupData(I)Landroid/webkitsec/WebHTMLMarkupData;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5900(Landroid/webkitsec/WebViewCore;I)Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v89

    .line 2318
    .local v89, "str":Landroid/webkitsec/WebHTMLMarkupData;
    monitor-enter v25

    .line 2320
    :try_start_7f9
    move-object/from16 v0, v25

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2321
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 2323
    monitor-exit v25

    goto/16 :goto_1f

    :catchall_806
    move-exception v2

    monitor-exit v25
    :try_end_808
    .catchall {:try_start_7f9 .. :try_end_808} :catchall_806

    throw v2

    .line 2328
    .end local v25    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    .end local v89    # "str":Landroid/webkitsec/WebHTMLMarkupData;
    :sswitch_809
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_826

    const/4 v2, 0x1

    :goto_821
    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetEditable(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$6000(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_1f

    :cond_826
    const/4 v2, 0x0

    goto :goto_821

    .line 2332
    :sswitch_828
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Landroid/graphics/Point;

    .line 2333
    .local v76, "recTwoIntObj":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v76

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v76

    iget v7, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetSelectionEditable(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$6100(Landroid/webkitsec/WebViewCore;III)V

    .line 2334
    monitor-enter v76

    .line 2336
    :try_start_84c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notify()V

    .line 2338
    monitor-exit v76

    goto/16 :goto_1f

    :catchall_852
    move-exception v2

    monitor-exit v76
    :try_end_854
    .catchall {:try_start_84c .. :try_end_854} :catchall_852

    throw v2

    .line 2345
    .end local v76    # "recTwoIntObj":Landroid/graphics/Point;
    :sswitch_855
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveSingleCursorHandler(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$6200(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2350
    :sswitch_872
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Landroid/graphics/Point;

    .line 2351
    .restart local v76    # "recTwoIntObj":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v76

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v76

    iget v7, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetComposingRegion(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$6300(Landroid/webkitsec/WebViewCore;III)V

    .line 2352
    monitor-enter v76

    .line 2354
    :try_start_896
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notify()V

    .line 2356
    monitor-exit v76

    goto/16 :goto_1f

    :catchall_89c
    move-exception v2

    monitor-exit v76
    :try_end_89e
    .catchall {:try_start_896 .. :try_end_89e} :catchall_89c

    throw v2

    .line 2360
    .end local v76    # "recTwoIntObj":Landroid/graphics/Point;
    :sswitch_89f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v46

    .line 2361
    .local v46, "factor":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v46

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetPageZoom(IF)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$6400(Landroid/webkitsec/WebViewCore;IF)V

    goto/16 :goto_1f

    .line 2365
    .end local v46    # "factor":F
    :sswitch_8c0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetSelectionNone(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2369
    :sswitch_8d5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2370
    .restart local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    const/16 v84, 0x0

    .line 2371
    .local v84, "result":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectionNone(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6600(Landroid/webkitsec/WebViewCore;I)Z

    move-result v84

    .line 2373
    monitor-enter v26

    .line 2374
    :try_start_8f4
    invoke-static/range {v84 .. v84}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2375
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2376
    monitor-exit v26

    goto/16 :goto_1f

    :catchall_903
    move-exception v2

    monitor-exit v26
    :try_end_905
    .catchall {:try_start_8f4 .. :try_end_905} :catchall_903

    throw v2

    .line 2384
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v84    # "result":Z
    :sswitch_906
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetComposingSelectionNone(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6700(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2388
    :sswitch_91b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRestorePreviousSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2393
    :sswitch_930
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSaveSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6900(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2397
    :sswitch_945
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateIMSelection(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$7000(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2401
    :sswitch_962
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2402
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, -0x1

    .line 2403
    .local v84, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckSelectionAtBoundry(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7100(Landroid/webkitsec/WebViewCore;I)I

    move-result v84

    .line 2405
    monitor-enter v27

    .line 2407
    :try_start_981
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2408
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2410
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_990
    move-exception v2

    monitor-exit v27
    :try_end_992
    .catchall {:try_start_981 .. :try_end_992} :catchall_990

    throw v2

    .line 2415
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_993
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkitsec/WebViewCore$EditableParams;

    .line 2416
    .local v44, "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/webkitsec/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object/from16 v0, v44

    iget v7, v0, Landroid/webkitsec/WebViewCore$EditableParams;->newCursorPosition:I

    move-object/from16 v0, v44

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$EditableParams;->composing:Z

    move-object/from16 v0, v44

    iget-object v9, v0, Landroid/webkitsec/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeInsertContent(ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    invoke-static/range {v4 .. v9}, Landroid/webkitsec/WebViewCore;->access$7200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v84

    .line 2417
    .local v84, "result":Landroid/graphics/Point;
    monitor-enter v44

    .line 2418
    :try_start_9c0
    move-object/from16 v0, v84

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/webkitsec/WebViewCore$EditableParams;->startOffset:I

    .line 2419
    move-object/from16 v0, v84

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/webkitsec/WebViewCore$EditableParams;->endOffset:I

    .line 2420
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V

    .line 2421
    monitor-exit v44

    goto/16 :goto_1f

    :catchall_9d6
    move-exception v2

    monitor-exit v44
    :try_end_9d8
    .catchall {:try_start_9c0 .. :try_end_9d8} :catchall_9d6

    throw v2

    .line 2426
    .end local v44    # "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    .end local v84    # "result":Landroid/graphics/Point;
    :sswitch_9d9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckSelectedClosestWord(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7300(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2431
    :sswitch_9ee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2432
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, 0x0

    .line 2433
    .local v84, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetStateInRichlyEditableText(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7400(Landroid/webkitsec/WebViewCore;I)I

    move-result v84

    .line 2435
    monitor-enter v27

    .line 2436
    :try_start_a0d
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2437
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2438
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_a1c
    move-exception v2

    monitor-exit v27
    :try_end_a1e
    .catchall {:try_start_a0d .. :try_end_a1e} :catchall_a1c

    throw v2

    .line 2443
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_a1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 2444
    .local v38, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v38

    # invokes: Landroid/webkitsec/WebViewCore;->nativeinsertImageContent(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$7500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1f

    .line 2449
    .end local v38    # "command":Ljava/lang/String;
    :sswitch_a3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeresizeImage(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$7600(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2455
    :sswitch_a5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2456
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v47, 0x0

    .line 2457
    .local v47, "fontSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativegetCurrentFontSize(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7700(Landroid/webkitsec/WebViewCore;I)I

    move-result v47

    .line 2458
    monitor-enter v27

    .line 2459
    :try_start_a7a
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2460
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2461
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_a89
    move-exception v2

    monitor-exit v27
    :try_end_a8b
    .catchall {:try_start_a7a .. :try_end_a8b} :catchall_a89

    throw v2

    .line 2466
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v47    # "fontSize":I
    :sswitch_a8c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2467
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v48, 0x0

    .line 2468
    .local v48, "fontValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativegetCurrentFontValue(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7800(Landroid/webkitsec/WebViewCore;I)I

    move-result v48

    .line 2469
    monitor-enter v27

    .line 2470
    :try_start_aab
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2471
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2472
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_aba
    move-exception v2

    monitor-exit v27
    :try_end_abc
    .catchall {:try_start_aab .. :try_end_abc} :catchall_aba

    throw v2

    .line 2476
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v48    # "fontValue":I
    :sswitch_abd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2477
    .restart local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v80, Landroid/graphics/Rect;

    invoke-direct/range {v80 .. v80}, Landroid/graphics/Rect;-><init>()V

    .line 2478
    .restart local v80    # "rect3":Landroid/graphics/Rect;
    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2479
    .restart local v72    # "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v92

    .line 2480
    .restart local v92    # "x":I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v94

    .line 2481
    .restart local v94    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v92

    move/from16 v1, v94

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetImageSize(III)Landroid/graphics/Rect;
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$7900(Landroid/webkitsec/WebViewCore;III)Landroid/graphics/Rect;

    move-result-object v80

    .line 2482
    monitor-enter v24

    .line 2484
    :try_start_af9
    move-object/from16 v0, v24

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2485
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 2487
    monitor-exit v24

    goto/16 :goto_1f

    :catchall_b06
    move-exception v2

    monitor-exit v24
    :try_end_b08
    .catchall {:try_start_af9 .. :try_end_b08} :catchall_b06

    throw v2

    .line 2491
    .end local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v72    # "params":[Ljava/lang/Object;
    .end local v80    # "rect3":Landroid/graphics/Rect;
    .end local v92    # "x":I
    .end local v94    # "y":I
    :sswitch_b09
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2492
    .restart local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v79, Landroid/graphics/Rect;

    invoke-direct/range {v79 .. v79}, Landroid/graphics/Rect;-><init>()V

    .line 2493
    .local v79, "rect2":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageRect(I)Landroid/graphics/Rect;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8000(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Rect;

    move-result-object v79

    .line 2494
    monitor-enter v24

    .line 2496
    :try_start_b2b
    move-object/from16 v0, v24

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2497
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 2499
    monitor-exit v24

    goto/16 :goto_1f

    :catchall_b38
    move-exception v2

    monitor-exit v24
    :try_end_b3a
    .catchall {:try_start_b2b .. :try_end_b3a} :catchall_b38

    throw v2

    .line 2503
    .end local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v79    # "rect2":Landroid/graphics/Rect;
    :sswitch_b3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->webkitActionBarDraw()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$8100(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_1f

    .line 2508
    :sswitch_b46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2509
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, -0x1

    .line 2510
    .restart local v84    # "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckEndOfWordAtPosition(III)I
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$8200(Landroid/webkitsec/WebViewCore;III)I

    move-result v84

    .line 2512
    monitor-enter v27

    .line 2513
    :try_start_b6d
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2514
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2515
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_b7c
    move-exception v2

    monitor-exit v27
    :try_end_b7e
    .catchall {:try_start_b6d .. :try_end_b7e} :catchall_b7c

    throw v2

    .line 2521
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_b7f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2522
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageUri(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8300(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2524
    .local v89, "str":Ljava/lang/String;
    monitor-enter v28

    .line 2525
    :try_start_b9c
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2526
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2527
    monitor-exit v28

    goto/16 :goto_1f

    :catchall_ba9
    move-exception v2

    monitor-exit v28
    :try_end_bab
    .catchall {:try_start_b9c .. :try_end_bab} :catchall_ba9

    throw v2

    .line 2533
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_bac
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/graphics/Rect;

    .line 2534
    .local v78, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v78

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v78

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v78

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v78

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectBWStartAndEnd(IIIII)V
    invoke-static/range {v4 .. v9}, Landroid/webkitsec/WebViewCore;->access$8400(Landroid/webkitsec/WebViewCore;IIIII)V

    goto/16 :goto_1f

    .line 2540
    .end local v78    # "rect":Landroid/graphics/Rect;
    :sswitch_bd9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetCursorFromRangeSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2545
    :sswitch_bee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2546
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, -0x1

    .line 2547
    .restart local v84    # "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeIsAtBoundary(III)I
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$8600(Landroid/webkitsec/WebViewCore;III)I

    move-result v84

    .line 2549
    monitor-enter v27

    .line 2550
    :try_start_c15
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2551
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2552
    monitor-exit v27

    goto/16 :goto_1f

    :catchall_c24
    move-exception v2

    monitor-exit v27
    :try_end_c26
    .catchall {:try_start_c15 .. :try_end_c26} :catchall_c24

    throw v2

    .line 2558
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_c27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDropTheDraggedText(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$8700(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2564
    :sswitch_c44
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeResetSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2568
    :sswitch_c59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2569
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedHTMLText(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8900(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2571
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2572
    :try_start_c76
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2573
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2574
    monitor-exit v28

    goto/16 :goto_1f

    :catchall_c83
    move-exception v2

    monitor-exit v28
    :try_end_c85
    .catchall {:try_start_c76 .. :try_end_c85} :catchall_c83

    throw v2

    .line 2579
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_c86
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_c92

    .line 2580
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2583
    :cond_c92
    sget-object v4, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_ca1

    const/4 v2, 0x1

    :goto_c9c
    invoke-virtual {v4, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_1f

    :cond_ca1
    const/4 v2, 0x0

    goto :goto_c9c

    .line 2588
    :sswitch_ca3
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_caf

    .line 2589
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2592
    :cond_caf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/util/Map;

    .line 2593
    .local v64, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v64

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v64

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/webkitsec/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 2598
    .end local v64    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_cd4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_ce7

    const/4 v2, 0x1

    :goto_ce2
    # invokes: Landroid/webkitsec/WebViewCore;->clearCache(Z)V
    invoke-static {v4, v2}, Landroid/webkitsec/WebViewCore;->access$3900(Landroid/webkitsec/WebViewCore;Z)V

    goto/16 :goto_1f

    :cond_ce7
    const/4 v2, 0x0

    goto :goto_ce2

    .line 2602
    :sswitch_ce9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebBackForwardListClassic;->close(I)V

    goto/16 :goto_1f

    .line 2607
    :sswitch_d08
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v81, v0

    check-cast v81, Landroid/webkitsec/WebViewCore$ReplaceTextData;

    .line 2608
    .local v81, "rep":Landroid/webkitsec/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v81

    iget-object v8, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v81

    iget v9, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v81

    iget v10, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v81

    iget v11, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mTextGeneration:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V
    invoke-static/range {v4 .. v11}, Landroid/webkitsec/WebViewCore;->access$9100(Landroid/webkitsec/WebViewCore;IIILjava/lang/String;III)V

    goto/16 :goto_1f

    .line 2614
    .end local v81    # "rep":Landroid/webkitsec/WebViewCore$ReplaceTextData;
    :sswitch_d3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/WebViewCore$JSKeyData;

    .line 2615
    .local v62, "jsData":Landroid/webkitsec/WebViewCore$JSKeyData;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v45, v0

    .line 2616
    .local v45, "evt":Landroid/view/KeyEvent;
    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 2617
    .local v8, "keyCode":I
    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    .line 2618
    .local v9, "keyValue":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 2619
    .local v6, "generation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v62

    iget-object v7, v0, Landroid/webkitsec/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isDown()Z

    move-result v10

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v13

    # invokes: Landroid/webkitsec/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V
    invoke-static/range {v4 .. v13}, Landroid/webkitsec/WebViewCore;->access$9200(Landroid/webkitsec/WebViewCore;IILjava/lang/String;IIZZZZ)V

    goto/16 :goto_1f

    .line 2630
    .end local v6    # "generation":I
    .end local v8    # "keyCode":I
    .end local v9    # "keyValue":I
    .end local v45    # "evt":Landroid/view/KeyEvent;
    .end local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSKeyData;
    :sswitch_d80
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9300(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2637
    :sswitch_d95
    invoke-static {}, Landroid/webkitsec/SslCertLookupTable;->getInstance()Landroid/webkitsec/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/SslCertLookupTable;->clear()V

    .line 2638
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$1300(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2642
    :sswitch_db1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_dce

    const/4 v2, 0x1

    :goto_dc9
    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetFocusControllerActive(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$9400(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_1f

    :cond_dce
    const/4 v2, 0x0

    goto :goto_dc9

    .line 2646
    :sswitch_dd0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/WebViewCore$JSInterfaceData;

    .line 2647
    .local v62, "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v62

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, v62

    iget-boolean v7, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    invoke-virtual {v2, v4, v5, v7}, Landroid/webkitsec/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1f

    .line 2652
    .end local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    :sswitch_df3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/WebViewCore$JSInterfaceData;

    .line 2653
    .restart local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 2658
    .end local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    :sswitch_e0e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkitsec/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 2663
    :sswitch_e23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkitsec/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 2667
    :sswitch_e38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$9500(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2671
    :sswitch_e55
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    const/4 v10, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkitsec/WebViewCore;->access$9600(Landroid/webkitsec/WebViewCore;IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v52

    .line 2672
    .local v52, "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/os/Message;

    .line 2673
    .local v53, "hrefMsg":Landroid/os/Message;
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v42

    .line 2674
    .local v42, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    const-string/jumbo v2, "title"

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    const-string/jumbo v2, "src"

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2682
    .end local v42    # "data":Landroid/os/Bundle;
    .end local v52    # "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .end local v53    # "hrefMsg":Landroid/os/Message;
    :sswitch_e9e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Message;

    .line 2683
    .local v55, "imageResult":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_ec0

    const/4 v2, 0x1

    :goto_eb7
    move-object/from16 v0, v55

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2685
    invoke-virtual/range {v55 .. v55}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2683
    :cond_ec0
    const/4 v2, 0x0

    goto :goto_eb7

    .line 2689
    .end local v55    # "imageResult":Landroid/os/Message;
    :sswitch_ec2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkitsec/WebViewCore$TextSelectionData;

    .line 2691
    .local v43, "deleteSelectionData":Landroid/webkitsec/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v43

    iget v5, v0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v43

    iget v7, v0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDeleteSelection(IIII)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkitsec/WebViewCore;->access$9700(Landroid/webkitsec/WebViewCore;IIII)V

    goto/16 :goto_1f

    .line 2696
    .end local v43    # "deleteSelectionData":Landroid/webkitsec/WebViewCore$TextSelectionData;
    :sswitch_eeb
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetSelection(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$9800(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2700
    :sswitch_f08
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x1

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    .line 2709
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/os/SomeArgs;

    .line 2710
    .local v29, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$10000(Landroid/webkitsec/WebViewCore;III)Ljava/lang/String;

    move-result-object v67

    .line 2714
    .local v67, "modifiedSelectionString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, v67

    invoke-virtual {v2, v0, v4}, Landroid/webkitsec/WebViewClassic;->handleSelectionChangedWebCoreThread(Ljava/lang/String;I)V

    .line 2716
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    goto/16 :goto_1f

    .line 2724
    .end local v29    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v67    # "modifiedSelectionString":Ljava/lang/String;
    :sswitch_f58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/util/SparseBooleanArray;

    .line 2726
    .local v33, "choices":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 2727
    .local v35, "choicesSize":I
    move/from16 v0, v35

    new-array v0, v0, [Z

    move-object/from16 v34, v0

    .line 2728
    .local v34, "choicesArray":[Z
    const/16 v30, 0x0

    .local v30, "c":I
    :goto_f6e
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_f81

    .line 2729
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v34, v30

    .line 2728
    add-int/lit8 v30, v30, 0x1

    goto :goto_f6e

    .line 2731
    :cond_f81
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v34

    move/from16 v1, v35

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoices(I[ZI)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$10100(Landroid/webkitsec/WebViewCore;I[ZI)V

    goto/16 :goto_1f

    .line 2736
    .end local v30    # "c":I
    .end local v33    # "choices":Landroid/util/SparseBooleanArray;
    .end local v34    # "choicesArray":[Z
    .end local v35    # "choicesSize":I
    :sswitch_f9a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$10200(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 2740
    :sswitch_fb3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetBackgroundColor(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$10300(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 2744
    :sswitch_fcc
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_fe9

    const/4 v2, 0x1

    :goto_fe4
    # invokes: Landroid/webkitsec/WebViewCore;->nativeDumpDomTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10400(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_1f

    :cond_fe9
    const/4 v2, 0x0

    goto :goto_fe4

    .line 2748
    :sswitch_feb
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1008

    const/4 v2, 0x1

    :goto_1003
    # invokes: Landroid/webkitsec/WebViewCore;->nativeDumpRenderTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10500(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_1f

    :cond_1008
    const/4 v2, 0x0

    goto :goto_1003

    .line 2752
    :sswitch_100a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10600(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1f

    .line 2756
    :sswitch_1025
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2760
    :sswitch_103a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;

    .line 2762
    .local v85, "saveMessage":Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v85

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v85

    iget-boolean v5, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mAutoname:Z

    # invokes: Landroid/webkitsec/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$10700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v85

    iput-object v2, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    .line 2764
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x83

    move-object/from16 v0, v85

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2769
    .end local v85    # "saveMessage":Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_1071
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;

    .line 2771
    .local v42, "data":Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-boolean v7, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v42

    iget-boolean v10, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkitsec/WebViewCore;->access$10800(Landroid/webkitsec/WebViewCore;ILjava/lang/String;ZZ)V

    goto/16 :goto_1f

    .line 2779
    .end local v42    # "data":Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;
    :sswitch_109a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->clearContent()V

    goto/16 :goto_1f

    .line 2783
    :sswitch_10a5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2787
    :sswitch_10b0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10900(Landroid/webkitsec/WebViewCore;I[Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 2791
    :sswitch_10cd
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFullScreenPluginHidden(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$11000(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 2795
    :sswitch_10e6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativePluginSurfaceReady(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$11100(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2799
    :sswitch_10fb
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$11200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2803
    :sswitch_1110
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_111c

    .line 2804
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2807
    :cond_111c
    sget-object v4, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_1f

    .line 2812
    :sswitch_1129
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->setUseMockGeolocation()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$11300(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_1f

    .line 2815
    :sswitch_1134
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->setUseMockDeviceOrientation()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$11400(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_1f

    .line 2819
    :sswitch_113f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeAutoFillForm(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$11500(Landroid/webkitsec/WebViewCore;II)V

    .line 2820
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2828
    :sswitch_1181
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 2832
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkitsec/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1f

    .line 2837
    :sswitch_119e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v68, v0

    .line 2838
    .local v68, "nativeLayer":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/graphics/Rect;

    .line 2839
    .restart local v78    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v68

    move-object/from16 v1, v78

    # invokes: Landroid/webkitsec/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$11600(Landroid/webkitsec/WebViewCore;IILandroid/graphics/Rect;)V

    goto/16 :goto_1f

    .line 2844
    .end local v68    # "nativeLayer":I
    .end local v78    # "rect":Landroid/graphics/Rect;
    :sswitch_11c5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v51, v2

    check-cast v51, [I

    .line 2845
    .local v51, "handles":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v51, v2

    const/4 v2, 0x1

    aget v13, v51, v2

    const/4 v2, 0x2

    aget v14, v51, v2

    const/4 v2, 0x3

    aget v15, v51, v2

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDeleteText(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkitsec/WebViewCore;->access$11700(Landroid/webkitsec/WebViewCore;IIIII)V

    goto/16 :goto_1f

    .line 2850
    .end local v51    # "handles":[I
    :sswitch_11f0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v51, v2

    check-cast v51, [I

    .line 2851
    .restart local v51    # "handles":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v51, v2

    const/4 v2, 0x1

    aget v13, v51, v2

    const/4 v2, 0x2

    aget v14, v51, v2

    const/4 v2, 0x3

    aget v15, v51, v2

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/webkitsec/WebViewCore;->access$11800(Landroid/webkitsec/WebViewCore;IIIII)Ljava/lang/String;

    move-result-object v39

    .line 2854
    .local v39, "copiedText":Ljava/lang/String;
    if-eqz v39, :cond_1f

    .line 2855
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x89

    move-object/from16 v0, v39

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2865
    .end local v39    # "copiedText":Ljava/lang/String;
    .end local v51    # "handles":[I
    :sswitch_1235
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2866
    .local v72, "params":Landroid/webkitsec/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    move-object/from16 v0, v72

    iget v12, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v72

    iget v13, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    move-object/from16 v0, v72

    iget v14, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    move-object/from16 v0, v72

    iget-boolean v15, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSmartSelection:Z

    move-object/from16 v0, v72

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v16, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v17, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v18, v0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCopyMoveSelection(IIIIZZFI)V
    invoke-static/range {v10 .. v18}, Landroid/webkitsec/WebViewCore;->access$11900(Landroid/webkitsec/WebViewCore;IIIIZZFI)V

    .line 2870
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v72

    iget v4, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2874
    .end local v72    # "params":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_1281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2875
    .local v87, "selAllValue":Landroid/webkitsec/WebViewCore$CopyParams;
    const/4 v14, 0x0

    .line 2876
    .local v14, "haveselection":I
    move-object/from16 v0, v87

    iget-boolean v2, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSelectionMove:Z

    if-nez v2, :cond_1291

    .line 2877
    const/4 v14, 0x1

    .line 2879
    :cond_1291
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    move-object/from16 v0, v87

    iget v12, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v87

    iget v13, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    const/4 v15, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeWebTextSelectionAll(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkitsec/WebViewCore;->access$12000(Landroid/webkitsec/WebViewCore;IIIII)V

    .line 2880
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2884
    .end local v14    # "haveselection":I
    .end local v87    # "selAllValue":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_12b9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2885
    .local v21, "Selvalue":Landroid/webkitsec/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x1

    # setter for: Landroid/webkitsec/WebViewCore;->btextselection:Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$12102(Landroid/webkitsec/WebViewCore;Z)Z

    .line 2886
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v15, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v19, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v20, v0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectClosestWord(IIIFZ)Z
    invoke-static/range {v15 .. v20}, Landroid/webkitsec/WebViewCore;->access$12200(Landroid/webkitsec/WebViewCore;IIIFZ)Z

    move-result v2

    if-eqz v2, :cond_1308

    .line 2887
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2889
    :cond_1308
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x93

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2895
    .end local v21    # "Selvalue":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_131f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x1

    # setter for: Landroid/webkitsec/WebViewCore;->btextselection:Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$12102(Landroid/webkitsec/WebViewCore;Z)Z

    .line 2896
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2897
    .local v36, "clearSelection":Landroid/webkitsec/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v36

    iget v5, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v36

    iget v7, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeClearTextSelectionEx(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$12300(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_1f

    .line 2900
    .end local v36    # "clearSelection":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_134e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlBT()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$12400(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_1f

    .line 2906
    :sswitch_1359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeInsertText(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$12500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_1f

    .line 2918
    :sswitch_1374
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2919
    .local v50, "handleId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v50

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectText(IIII)V
    invoke-static {v2, v4, v0, v5, v7}, Landroid/webkitsec/WebViewCore;->access$12600(Landroid/webkitsec/WebViewCore;IIII)V

    goto/16 :goto_1f

    .line 2924
    .end local v50    # "handleId":I
    :sswitch_139d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x2

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    .line 2926
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    .line 2927
    .restart local v92    # "x":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v94, v0

    .line 2928
    .restart local v94    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v92

    move/from16 v1, v94

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectWordAt(III)Z
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$12700(Landroid/webkitsec/WebViewCore;III)Z

    move-result v2

    if-nez v2, :cond_13e2

    .line 2929
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x93

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2932
    :cond_13e2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    goto/16 :goto_1f

    .line 2937
    .end local v92    # "x":I
    .end local v94    # "y":I
    :sswitch_13ee
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectAll(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$12800(Landroid/webkitsec/WebViewCore;I)V

    .line 2939
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2944
    :sswitch_1416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_1f

    .line 2948
    :sswitch_142b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkitsec/WebViewCore$FindAllRequest;

    .line 2949
    .local v82, "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    if-eqz v82, :cond_148f

    .line 2950
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v82

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$12900(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)I

    move-result v65

    .line 2951
    .local v65, "matchCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    const/4 v5, 0x1

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13000(Landroid/webkitsec/WebViewCore;IZ)I

    move-result v66

    .line 2952
    .local v66, "matchIndex":I
    monitor-enter v82

    .line 2953
    :try_start_1463
    move/from16 v0, v65

    move-object/from16 v1, v82

    iput v0, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchCount:I

    .line 2954
    move/from16 v0, v66

    move-object/from16 v1, v82

    iput v0, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 2955
    invoke-virtual/range {v82 .. v82}, Ljava/lang/Object;->notify()V

    .line 2956
    monitor-exit v82
    :try_end_1473
    .catchall {:try_start_1463 .. :try_end_1473} :catchall_148c

    .line 2960
    .end local v65    # "matchCount":I
    .end local v66    # "matchIndex":I
    :goto_1473
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v82

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2956
    .restart local v65    # "matchCount":I
    .restart local v66    # "matchIndex":I
    :catchall_148c
    move-exception v2

    :try_start_148d
    monitor-exit v82
    :try_end_148e
    .catchall {:try_start_148d .. :try_end_148e} :catchall_148c

    throw v2

    .line 2958
    .end local v65    # "matchCount":I
    .end local v66    # "matchIndex":I
    :cond_148f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    const/4 v5, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$12900(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)I

    goto :goto_1473

    .line 2967
    .end local v82    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    :sswitch_14a4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->applyreadability(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$13100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 2968
    .local v75, "readerData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v2, v0}, Landroid/webkitsec/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 2972
    .end local v75    # "readerData":Ljava/lang/String;
    :sswitch_14cf
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->loadinitialJs(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$13200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 2973
    .local v77, "recogData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v77

    invoke-virtual {v2, v0}, Landroid/webkitsec/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 2979
    .end local v77    # "recogData":Ljava/lang/String;
    :sswitch_14fa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkitsec/WebViewCore$FindAllRequest;

    .line 2980
    .restart local v82    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_153e

    const/4 v2, 0x1

    :goto_1519
    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$13000(Landroid/webkitsec/WebViewCore;IZ)I

    move-result v66

    .line 2981
    .restart local v66    # "matchIndex":I
    monitor-enter v82

    .line 2982
    :try_start_151e
    move/from16 v0, v66

    move-object/from16 v1, v82

    iput v0, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 2983
    monitor-exit v82
    :try_end_1525
    .catchall {:try_start_151e .. :try_end_1525} :catchall_1540

    .line 2984
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v82

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1f

    .line 2980
    .end local v66    # "matchIndex":I
    :cond_153e
    const/4 v2, 0x0

    goto :goto_1519

    .line 2983
    .restart local v66    # "matchIndex":I
    :catchall_1540
    move-exception v2

    :try_start_1541
    monitor-exit v82
    :try_end_1542
    .catchall {:try_start_1541 .. :try_end_1542} :catchall_1540

    throw v2

    .line 2989
    .end local v66    # "matchIndex":I
    .end local v82    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    :sswitch_1543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetInitialFocus(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13300(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 2992
    :sswitch_155c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;

    .line 2993
    .local v82, "request":Landroid/webkitsec/WebViewCore$SaveViewStateRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v82

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mStream:Ljava/io/OutputStream;

    move-object/from16 v0, v82

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mCallback:Landroid/webkitsec/ValueCallback;

    # invokes: Landroid/webkitsec/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13400(Landroid/webkitsec/WebViewCore;Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V

    goto/16 :goto_1f

    .line 3000
    .end local v82    # "request":Landroid/webkitsec/WebViewCore$SaveViewStateRequest;
    :sswitch_1577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSendColorPickerChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13500(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 3006
    :sswitch_1590
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;

    .line 3008
    .local v70, "notifydata":Landroid/webkitsec/WebViewCore$NotificationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v70

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v70

    iget-boolean v5, v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;->mAllow:Z

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13600(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)V

    goto/16 :goto_1f

    .line 3013
    .end local v70    # "notifydata":Landroid/webkitsec/WebViewCore$NotificationPermissionsData;
    :sswitch_15ab
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Landroid/webkitsec/WebViewCore$InvokeEventparams;

    .line 3015
    .local v83, "responsedata":Landroid/webkitsec/WebViewCore$InvokeEventparams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v83

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    move-object/from16 v0, v83

    iget v5, v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;->mPointer:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;I)V

    goto/16 :goto_1f

    .line 3019
    .end local v83    # "responsedata":Landroid/webkitsec/WebViewCore$InvokeEventparams;
    :sswitch_15c6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/webkitsec/WebViewCore$InvokeNotifyID;

    .line 3021
    .local v69, "notifyID":Landroid/webkitsec/WebViewCore$InvokeNotifyID;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v69

    iget v4, v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;->mnotificationID:I

    move-object/from16 v0, v69

    iget v5, v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;->mcounter:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotificationIDback(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13800(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_1f

    .line 3027
    .end local v69    # "notifyID":Landroid/webkitsec/WebViewCore$InvokeNotifyID;
    :sswitch_15e1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveFocusToNext(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$13900(Landroid/webkitsec/WebViewCore;I)Z

    goto/16 :goto_1f

    .line 3030
    :sswitch_15f6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveFocusToPrevious(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$14000(Landroid/webkitsec/WebViewCore;I)Z

    goto/16 :goto_1f

    .line 1865
    nop

    :pswitch_data_160c
    .packed-switch 0x6d
        :pswitch_20
        :pswitch_63
    .end packed-switch

    .line 1897
    :sswitch_data_1614
    .sparse-switch
        0x60 -> :sswitch_95
        0x63 -> :sswitch_107
        0x64 -> :sswitch_16e
        0x65 -> :sswitch_249
        0x66 -> :sswitch_281
        0x67 -> :sswitch_291
        0x68 -> :sswitch_2a7
        0x69 -> :sswitch_2cc
        0x6a -> :sswitch_3d7
        0x6b -> :sswitch_2dd
        0x6c -> :sswitch_434
        0x6f -> :sswitch_cd4
        0x70 -> :sswitch_ce9
        0x71 -> :sswitch_eeb
        0x72 -> :sswitch_d08
        0x73 -> :sswitch_d3d
        0x74 -> :sswitch_3aa
        0x77 -> :sswitch_c86
        0x78 -> :sswitch_e9e
        0x7a -> :sswitch_ec2
        0x7b -> :sswitch_f58
        0x7c -> :sswitch_f9a
        0x7d -> :sswitch_10a5
        0x7e -> :sswitch_fb3
        0x80 -> :sswitch_d80
        0x82 -> :sswitch_aa
        0x84 -> :sswitch_190
        0x86 -> :sswitch_109a
        0x87 -> :sswitch_e38
        0x89 -> :sswitch_e55
        0x8a -> :sswitch_dd0
        0x8b -> :sswitch_1b6
        0x8e -> :sswitch_db1
        0x8f -> :sswitch_44c
        0x90 -> :sswitch_461
        0x91 -> :sswitch_476
        0x93 -> :sswitch_103a
        0x95 -> :sswitch_df3
        0x96 -> :sswitch_d95
        0xa0 -> :sswitch_e0e
        0xa1 -> :sswitch_e23
        0xaa -> :sswitch_fcc
        0xab -> :sswitch_feb
        0xae -> :sswitch_100a
        0xaf -> :sswitch_1025
        0xb4 -> :sswitch_1071
        0xb5 -> :sswitch_10b0
        0xb6 -> :sswitch_10cd
        0xb7 -> :sswitch_ca3
        0xb8 -> :sswitch_1110
        0xbe -> :sswitch_f08
        0xbf -> :sswitch_1134
        0xc0 -> :sswitch_113f
        0xc2 -> :sswitch_1181
        0xc3 -> :sswitch_10e6
        0xc4 -> :sswitch_10fb
        0xc6 -> :sswitch_119e
        0xc8 -> :sswitch_b5
        0xc9 -> :sswitch_1577
        0xcb -> :sswitch_1590
        0xcc -> :sswitch_15ab
        0xcd -> :sswitch_15c6
        0xd2 -> :sswitch_11f0
        0xd3 -> :sswitch_11c5
        0xd4 -> :sswitch_1359
        0xd5 -> :sswitch_1374
        0xd6 -> :sswitch_139d
        0xd7 -> :sswitch_13ee
        0xd9 -> :sswitch_14a4
        0xda -> :sswitch_14cf
        0xdd -> :sswitch_142b
        0xde -> :sswitch_14fa
        0xdf -> :sswitch_2bd
        0xe0 -> :sswitch_1543
        0xe1 -> :sswitch_155c
        0xe2 -> :sswitch_1129
        0xf0 -> :sswitch_38b
        0xf1 -> :sswitch_35e
        0x1fc -> :sswitch_495
        0x1fd -> :sswitch_4ca
        0x1fe -> :sswitch_828
        0x1ff -> :sswitch_516
        0x200 -> :sswitch_5a2
        0x201 -> :sswitch_533
        0x202 -> :sswitch_575
        0x203 -> :sswitch_66b
        0x204 -> :sswitch_7b1
        0x205 -> :sswitch_7d0
        0x206 -> :sswitch_7dc
        0x207 -> :sswitch_809
        0x209 -> :sswitch_631
        0x20b -> :sswitch_8c0
        0x20c -> :sswitch_8d5
        0x20d -> :sswitch_6ea
        0x20f -> :sswitch_71b
        0x211 -> :sswitch_79c
        0x212 -> :sswitch_5cf
        0x213 -> :sswitch_600
        0x214 -> :sswitch_91b
        0x215 -> :sswitch_930
        0x217 -> :sswitch_962
        0x218 -> :sswitch_993
        0x219 -> :sswitch_906
        0x21a -> :sswitch_945
        0x21b -> :sswitch_872
        0x21c -> :sswitch_855
        0x21d -> :sswitch_560
        0x21e -> :sswitch_9ee
        0x21f -> :sswitch_b3b
        0x220 -> :sswitch_a1f
        0x221 -> :sswitch_a3e
        0x222 -> :sswitch_a5b
        0x223 -> :sswitch_9d9
        0x224 -> :sswitch_b46
        0x225 -> :sswitch_a8c
        0x226 -> :sswitch_abd
        0x227 -> :sswitch_b09
        0x228 -> :sswitch_89f
        0x229 -> :sswitch_b7f
        0x22a -> :sswitch_bac
        0x22b -> :sswitch_bd9
        0x22c -> :sswitch_bee
        0x22d -> :sswitch_c27
        0x22e -> :sswitch_74c
        0x22f -> :sswitch_c44
        0x230 -> :sswitch_c59
        0x258 -> :sswitch_15e1
        0x259 -> :sswitch_15f6
        0x25a -> :sswitch_331
        0x25d -> :sswitch_1416
        0x2c6 -> :sswitch_1235
        0x2c7 -> :sswitch_131f
        0x2c8 -> :sswitch_12b9
        0x2c9 -> :sswitch_1235
        0x2cc -> :sswitch_1281
        0x2cd -> :sswitch_134e
        0x2ce -> :sswitch_159
        0x2cf -> :sswitch_30c
    .end sparse-switch
.end method
