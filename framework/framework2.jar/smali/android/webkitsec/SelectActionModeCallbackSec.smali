.class public Landroid/webkitsec/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final ACTION_SEC_TRANSLATE_GET_SUPPORTED_LANGUAGES:Ljava/lang/String; = "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

.field public static final ACTION_SEC_TRANSLATE_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final GET_SUPPORTED_LANGUAGES:I = 0xc8

.field public static final LANGUAGE_CODE_CHINESE:Ljava/lang/String; = "ch"

.field public static final LANGUAGE_CODE_ENGLISH:Ljava/lang/String; = "en"

.field public static final LANGUAGE_CODE_JAPANESE:Ljava/lang/String; = "ja"

.field public static final LANGUAGE_CODE_KOREAN:Ljava/lang/String; = "ko"

.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"

.field private static final TRANSLATE_REQUEST:I = 0xc9


# instance fields
.field private isSelectTypePassword:Z

.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "visible"    # Z
    .param p3, "resourceId"    # I

    .prologue
    .line 434
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 435
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_9

    .line 436
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    :cond_9
    return-void
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 166
    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 169
    :cond_c
    return-void
.end method

.method finish(Z)V
    .registers 2
    .param p1, "recreate"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    .line 174
    invoke-virtual {p0}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish()V

    .line 175
    return-void
.end method

.method getSelectTypePassword()Z
    .registers 2

    .prologue
    .line 441
    iget-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 16
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/high16 v12, 0x10000000

    const/16 v11, 0x7530

    const/16 v10, 0x7d0

    const/4 v8, 0x0

    .line 302
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_150

    .line 412
    :goto_e
    return v8

    .line 304
    :sswitch_f
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    .line 305
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 412
    :goto_17
    const/4 v8, 0x1

    goto :goto_e

    .line 310
    :sswitch_19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/String;

    const-string v9, "com.sec.android.app.translator"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 314
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->copySelectionSecUseDefaultClipboard()Z

    .line 320
    :goto_3d
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 321
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_17

    .line 317
    :cond_46
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->copySelectionSec()Z

    goto :goto_3d

    .line 325
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pkgName":Ljava/lang/String;
    :sswitch_4c
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    .line 326
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_17

    .line 334
    :sswitch_55
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_66

    .line 335
    const-string v8, "SelectActionModeCallbackSec"

    const-string/jumbo v9, "mWebView.getSelectionSec() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 338
    :cond_66
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 339
    .local v6, "selection":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v11, :cond_82

    .line 340
    const-string v8, "SelectActionModeCallbackSec"

    const-string/jumbo v9, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 344
    :cond_82
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 346
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_17

    .line 350
    .end local v6    # "selection":Ljava/lang/StringBuffer;
    :sswitch_98
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    goto/16 :goto_17

    .line 354
    :sswitch_9f
    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "sel":Ljava/lang/String;
    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 356
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 357
    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9, v5, v8}, Landroid/webkitsec/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_17

    .line 362
    .end local v5    # "sel":Ljava/lang/String;
    :sswitch_b4
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c6

    .line 363
    const-string v8, "SelectActionModeCallbackSec"

    const-string/jumbo v9, "mWebView.getSelectionSec() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 367
    :cond_c6
    new-instance v7, Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 368
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v10, :cond_da

    .line 369
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 372
    :cond_da
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v8, "query"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 375
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 377
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-nez v8, :cond_100

    .line 378
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 380
    :cond_100
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 384
    .end local v1    # "i":Landroid/content/Intent;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :sswitch_10b
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_17

    .line 390
    :sswitch_112
    :try_start_112
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    const-string/jumbo v8, "mode"

    const-string/jumbo v9, "viewer"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v8, "source_text"

    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 401
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 402
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V
    :try_end_147
    .catch Landroid/content/ActivityNotFoundException; {:try_start_112 .. :try_end_147} :catch_149

    goto/16 :goto_17

    .line 404
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_149
    move-exception v0

    .line 405
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_17

    .line 302
    nop

    :sswitch_data_150
    .sparse-switch
        0x1020020 -> :sswitch_f
        0x1020021 -> :sswitch_19
        0x1020022 -> :sswitch_4c
        0x10202c1 -> :sswitch_10b
        0x10202c3 -> :sswitch_55
        0x1020461 -> :sswitch_98
        0x1020462 -> :sswitch_9f
        0x1020463 -> :sswitch_b4
        0x1020464 -> :sswitch_112
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 16
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    const v12, 0x1140009

    invoke-virtual {v11, v12, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 208
    .local v6, "context":Landroid/content/Context;
    const-string v11, "clipboard"

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipboardManager;

    move-object v4, v11

    check-cast v4, Landroid/content/ClipboardManager;

    .line 210
    .local v4, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    .line 215
    .local v7, "isFocusable":Z
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v11, :cond_2b

    .line 216
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v11

    iput-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 219
    :cond_2b
    const/4 v8, 0x0

    .line 220
    .local v8, "isTypePassword":Z
    const/4 v10, 0x0

    .line 221
    .local v10, "variation":I
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v11, :cond_42

    .line 222
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v11

    and-int/lit16 v10, v11, 0xff0

    .line 224
    const/16 v11, 0xe0

    if-ne v10, v11, :cond_42

    .line 225
    const/4 v8, 0x1

    .line 228
    :cond_42
    iput-boolean v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    .line 232
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_be

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    if-eqz v11, :cond_be

    const/4 v3, 0x1

    .line 233
    .local v3, "canPaste":Z
    :goto_4f
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v11, :cond_c0

    if-eqz v7, :cond_c0

    const/4 v2, 0x1

    .line 234
    .local v2, "canFind":Z
    :goto_56
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_c2

    if-nez v8, :cond_c2

    const/4 v1, 0x1

    .line 235
    .local v1, "canCut":Z
    :goto_5d
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isBrowserApp()Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 236
    and-int/2addr v3, v7

    .line 237
    and-int/2addr v2, v7

    .line 238
    and-int/2addr v1, v7

    .line 242
    :cond_6c
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v11

    if-eqz v11, :cond_c4

    .line 243
    const/4 v11, 0x0

    const v12, 0x1020462

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 244
    const/4 v11, 0x0

    const v12, 0x1020022

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 245
    const/4 v11, 0x0

    const v12, 0x1020020

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 246
    const/4 v11, 0x0

    const v12, 0x1020021

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 247
    const/4 v11, 0x0

    const v12, 0x10202c3

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 248
    const/4 v11, 0x0

    const v12, 0x1020463

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 249
    const/4 v11, 0x0

    const v12, 0x10202c1

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 250
    const/4 v11, 0x0

    const v12, 0x1020464

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 251
    const/4 v11, 0x0

    const v12, 0x1020461

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 290
    :cond_b7
    :goto_b7
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    .line 291
    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 292
    const/4 v11, 0x1

    return v11

    .line 232
    .end local v1    # "canCut":Z
    .end local v2    # "canFind":Z
    .end local v3    # "canPaste":Z
    :cond_be
    const/4 v3, 0x0

    goto :goto_4f

    .line 233
    .restart local v3    # "canPaste":Z
    :cond_c0
    const/4 v2, 0x0

    goto :goto_56

    .line 234
    .restart local v2    # "canFind":Z
    :cond_c2
    const/4 v1, 0x0

    goto :goto_5d

    .line 253
    .restart local v1    # "canCut":Z
    :cond_c4
    const v11, 0x1020462

    invoke-direct {p0, p2, v2, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 254
    const v11, 0x1020022

    invoke-direct {p0, p2, v3, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 255
    const v11, 0x1020020

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 256
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_ec

    .line 257
    const v11, 0x1020021

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 258
    const v11, 0x10202c3

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 259
    const v11, 0x1020463

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 261
    :cond_ec
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    const v12, 0x10202c1

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 262
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 263
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_169

    .line 266
    const/4 v11, 0x0

    const v12, 0x1020464

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 271
    :goto_111
    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 278
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 279
    .local v5, "config":Landroid/content/res/Configuration;
    iget v11, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v11, v11, 0x4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_b7

    .line 280
    const/4 v11, 0x0

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 281
    const/4 v11, 0x1

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 282
    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 283
    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    const/4 v11, 0x5

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 286
    const/4 v11, 0x6

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_b7

    .line 269
    .end local v5    # "config":Landroid/content/res/Configuration;
    :cond_169
    const/4 v11, 0x1

    const v12, 0x1020464

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    goto :goto_111
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 428
    :cond_9
    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->isSelectionResetCalled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 429
    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->performSelectionDoneAction()V

    .line 431
    :cond_1a
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method setWebViewClassic(Landroid/webkitsec/WebViewClassic;)V
    .registers 2
    .param p1, "webViewClassic"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 147
    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 148
    invoke-virtual {p0}, Landroid/webkitsec/SelectActionModeCallbackSec;->onSetWebView()V

    .line 149
    return-void
.end method
