.class Landroid/webkitsec/AccessibilityInjector;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/AccessibilityInjector$CallbackHandler;,
        Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ANDROIDVOX_TEMPLATE:Ljava/lang/String; = "(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.AndroidVox) != \'undefined\')      && (cvox.AndroidVox != null)      && cvox.ChromeVox.isActive) {    return cvox.AndroidVox.performAction(\'%1s\');  } else {    return false;  }})()"

.field private static final ACCESSIBILITY_SCREEN_READER_JAVASCRIPT_TEMPLATE:Ljava/lang/String; = "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_TRAVERSAL_JS_INTERFACE:Ljava/lang/String; = "accessibilityTraversal"

.field private static final ALIAS_TTS_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TOGGLE_CVOX_TEMPLATE:Ljava/lang/String; = "javascript:(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.ChromeVox.host) != \'undefined\')      && (cvox.ChromeVox.host != null)) {    cvox.ChromeVox.host.activateOrDeactivateChromeVox(%b);  }})();"


# instance fields
.field private mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

.field private mAccessibilityJSONObject:Lorg/json/JSONObject;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityScriptInjected:Z

.field private mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

.field private final mContext:Landroid/content/Context;

.field private mInjectScriptRunnable:Ljava/lang/Runnable;

.field private mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

.field private final mWebView:Landroid/webkitsec/WebView;

.field private final mWebViewClassic:Landroid/webkitsec/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Landroid/webkitsec/AccessibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .registers 3
    .param p1, "webViewClassic"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/webkitsec/AccessibilityInjector$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/AccessibilityInjector$1;-><init>(Landroid/webkitsec/AccessibilityInjector;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mInjectScriptRunnable:Ljava/lang/Runnable;

    .line 141
    iput-object p1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 142
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    .line 143
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 145
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/AccessibilityInjector;)Landroid/webkitsec/WebView;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/AccessibilityInjector;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkitsec/AccessibilityInjector;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/AccessibilityInjector;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->injectJavaScript()V

    return-void
.end method

.method private addCallbackApis()V
    .registers 4

    .prologue
    .line 544
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-nez v0, :cond_e

    .line 545
    new-instance v0, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    const-string v1, "accessibilityTraversal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;-><init>(Ljava/lang/String;Landroid/webkitsec/AccessibilityInjector$1;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    .line 548
    :cond_e
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private addTtsApis()V
    .registers 4

    .prologue
    .line 522
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-nez v0, :cond_d

    .line 523
    new-instance v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    .line 526
    :cond_d
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    const-string v2, "accessibility"

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private getAxsUrlParameterValue(Ljava/lang/String;)I
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 568
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 590
    :cond_9
    :goto_9
    return v3

    .line 573
    :cond_a
    :try_start_a
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 575
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 576
    .local v1, "param":Lorg/apache/http/NameValuePair;
    const-string v4, "axs"

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 577
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkitsec/AccessibilityInjector;->verifyInjectionValue(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_37} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_37} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_37} :catch_39

    move-result v3

    goto :goto_9

    .line 586
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_39
    move-exception v4

    goto :goto_9

    .line 583
    :catch_3b
    move-exception v4

    goto :goto_9

    .line 580
    :catch_3d
    move-exception v4

    goto :goto_9
.end method

.method private getScreenReaderInjectionUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 614
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_script_injection_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "screenReaderUrl":Ljava/lang/String;
    const-string v1, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private injectJavaScript()V
    .registers 5

    .prologue
    .line 434
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 436
    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-nez v1, :cond_3d

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 438
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->getScreenReaderInjectionUrl()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "injectionUrl":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebView;->loadUrl(Ljava/lang/String;)V

    .line 440
    sget-boolean v1, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 441
    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Loading screen reader into WebView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "injectionUrl":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void

    .line 444
    :cond_3d
    sget-boolean v1, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 445
    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to inject screen reader twice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private isAccessibilityEnabled()Z
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isJavaScriptEnabled()Z
    .registers 3

    .prologue
    .line 624
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    .line 625
    .local v0, "settings":Landroid/webkitsec/WebSettings;
    if-nez v0, :cond_a

    .line 626
    const/4 v1, 0x0

    .line 629
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    goto :goto_9
.end method

.method private isScriptInjectionEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_script_injection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "injectionSetting":I
    if-ne v0, v1, :cond_11

    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10
.end method

.method private removeAccessibilityApisIfNecessary()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->removeTtsApis()V

    .line 185
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->removeCallbackApis()V

    .line 186
    return-void
.end method

.method private removeCallbackApis()V
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_7

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    .line 556
    :cond_7
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private removeTtsApis()V
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_11

    .line 535
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    .line 536
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->shutdown()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    .line 540
    :cond_11
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private sendActionToAndroidVox(ILandroid/os/Bundle;)Z
    .registers 13
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 647
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    if-nez v7, :cond_30

    .line 648
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    .line 659
    :cond_c
    :try_start_c
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "action"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_17} :catch_57

    .line 661
    sparse-switch p1, :sswitch_data_72

    .line 683
    :cond_1a
    :goto_1a
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "jsonString":Ljava/lang/String;
    const-string v7, "(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.AndroidVox) != \'undefined\')      && (cvox.AndroidVox != null)      && cvox.ChromeVox.isActive) {    return cvox.AndroidVox.performAction(\'%1s\');  } else {    return false;  }})()"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "jsCode":Ljava/lang/String;
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-nez v7, :cond_69

    .line 686
    .end local v3    # "jsCode":Ljava/lang/String;
    .end local v4    # "jsonString":Ljava/lang/String;
    :goto_2f
    return v6

    .line 651
    :cond_30
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 652
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 653
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_36

    .line 664
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :sswitch_43
    if-eqz p2, :cond_1a

    .line 665
    :try_start_45
    const-string v7, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 667
    .local v2, "granularity":I
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "granularity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    .line 679
    .end local v2    # "granularity":I
    :catch_57
    move-exception v0

    .line 680
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_2f

    .line 672
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_59
    if-eqz p2, :cond_1a

    .line 673
    const-string v7, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "element":Ljava/lang/String;
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "element"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_68} :catch_57

    goto :goto_1a

    .line 686
    .end local v1    # "element":Ljava/lang/String;
    .restart local v3    # "jsCode":Ljava/lang/String;
    .restart local v4    # "jsonString":Ljava/lang/String;
    :cond_69
    iget-object v6, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    # invokes: Landroid/webkitsec/AccessibilityInjector$CallbackHandler;->performAction(Landroid/webkitsec/WebView;Ljava/lang/String;)Z
    invoke-static {v6, v7, v3}, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;->access$500(Landroid/webkitsec/AccessibilityInjector$CallbackHandler;Landroid/webkitsec/WebView;Ljava/lang/String;)Z

    move-result v6

    goto :goto_2f

    .line 661
    :sswitch_data_72
    .sparse-switch
        0x100 -> :sswitch_43
        0x200 -> :sswitch_43
        0x400 -> :sswitch_59
        0x800 -> :sswitch_59
    .end sparse-switch
.end method

.method private shouldInjectJavaScript(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 504
    :cond_7
    :goto_7
    return v0

    .line 495
    :cond_8
    invoke-direct {p0, p1}, Landroid/webkitsec/AccessibilityInjector;->getAxsUrlParameterValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 500
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isScriptInjectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 504
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private toggleAndroidVox(Z)V
    .registers 7
    .param p1, "state"    # Z

    .prologue
    .line 202
    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-nez v1, :cond_5

    .line 208
    :goto_4
    return-void

    .line 206
    :cond_5
    const-string v1, "javascript:(function() {  if ((typeof(cvox) != \'undefined\')      && (cvox != null)      && (typeof(cvox.ChromeVox) != \'undefined\')      && (cvox.ChromeVox != null)      && (typeof(cvox.ChromeVox.host) != \'undefined\')      && (cvox.ChromeVox.host != null)) {    cvox.ChromeVox.host.activateOrDeactivateChromeVox(%b);  }})();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private toggleFallbackAccessibilityInjector(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 474
    if-eqz p1, :cond_10

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-nez v0, :cond_10

    .line 475
    new-instance v0, Landroid/webkitsec/AccessibilityInjectorFallback;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkitsec/AccessibilityInjectorFallback;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    .line 479
    :goto_f
    return-void

    .line 477
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    goto :goto_f
.end method

.method private verifyInjectionValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 595
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_d

    move-result v0

    .line 597
    .local v0, "parsed":I
    packed-switch v0, :pswitch_data_10

    .line 607
    .end local v0    # "parsed":I
    :goto_7
    const/4 v1, -0x1

    :goto_8
    return v1

    .line 599
    .restart local v0    # "parsed":I
    :pswitch_9
    const/4 v1, 0x0

    goto :goto_8

    .line 601
    :pswitch_b
    const/4 v1, 0x1

    goto :goto_8

    .line 603
    .end local v0    # "parsed":I
    :catch_d
    move-exception v1

    goto :goto_7

    .line 597
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public addAccessibilityApisIfNecessary()V
    .registers 2

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 175
    :cond_c
    :goto_c
    return-void

    .line 173
    :cond_d
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->addTtsApis()V

    .line 174
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->addCallbackApis()V

    goto :goto_c
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->shutdown()V

    .line 193
    iput-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    .line 196
    :cond_c
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_12

    .line 197
    iput-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    .line 199
    :cond_12
    return-void
.end method

.method public handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 292
    iput-boolean v2, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 293
    invoke-direct {p0, v2}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    move v1, v2

    .line 347
    :goto_e
    return v1

    .line 297
    :cond_f
    iget-boolean v3, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-eqz v3, :cond_5a

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_68

    .line 324
    :goto_1b
    if-eqz v0, :cond_26

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_26

    .line 326
    const/4 v0, 0x0

    .line 329
    :cond_26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4a

    .line 330
    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/16 v4, 0x68

    invoke-virtual {v3, v4, v0, v2, p1}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto :goto_e

    .line 307
    :sswitch_34
    const/16 v0, 0x82

    .line 308
    goto :goto_1b

    .line 310
    :sswitch_37
    const/16 v0, 0x21

    .line 311
    goto :goto_1b

    .line 313
    :sswitch_3a
    const/16 v0, 0x11

    .line 314
    goto :goto_1b

    .line 316
    :sswitch_3d
    const/16 v0, 0x42

    .line 317
    goto :goto_1b

    .line 319
    :sswitch_40
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_48

    move v0, v1

    .line 320
    :goto_47
    goto :goto_1b

    .line 319
    :cond_48
    const/4 v0, 0x2

    goto :goto_47

    .line 331
    :cond_4a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_58

    .line 332
    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v0, v2, p1}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto :goto_e

    :cond_58
    move v1, v2

    .line 334
    goto :goto_e

    .line 340
    .end local v0    # "direction":I
    :cond_5a
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-eqz v1, :cond_65

    .line 344
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    invoke-virtual {v1, p1}, Landroid/webkitsec/AccessibilityInjectorFallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_e

    :cond_65
    move v1, v2

    .line 347
    goto :goto_e

    .line 305
    nop

    :sswitch_data_68
    .sparse-switch
        0x13 -> :sswitch_37
        0x14 -> :sswitch_34
        0x15 -> :sswitch_3a
        0x16 -> :sswitch_3d
        0x3d -> :sswitch_40
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 224
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 229
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 230
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 231
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 232
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 233
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 235
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 392
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 411
    :cond_a
    :goto_a
    return-void

    .line 396
    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 398
    invoke-direct {p0, p1}, Landroid/webkitsec/AccessibilityInjector;->shouldInjectJavaScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 401
    sget-boolean v1, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v1, :cond_3d

    .line 402
    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Request callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mCallback:Landroid/webkitsec/AccessibilityInjector$CallbackHandler;

    iget-object v2, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    iget-object v3, p0, Landroid/webkitsec/AccessibilityInjector;->mInjectScriptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/AccessibilityInjector$CallbackHandler;->requestCallback(Landroid/webkitsec/WebView;Ljava/lang/Runnable;)V
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_a

    .line 407
    :catch_47
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    const-string v2, "NullPointerException in onPageFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 376
    sget-boolean v0, Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 377
    sget-object v0, Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Started loading new page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2b
    invoke-virtual {p0}, Landroid/webkitsec/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 380
    return-void
.end method

.method public onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
    .registers 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 363
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/AccessibilityInjectorFallback;->onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V

    .line 366
    :cond_9
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 268
    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    .line 269
    invoke-direct {p0, v0}, Landroid/webkitsec/AccessibilityInjector;->toggleFallbackAccessibilityInjector(Z)V

    .line 281
    :cond_c
    :goto_c
    return v0

    .line 273
    :cond_d
    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityScriptInjected:Z

    if-eqz v1, :cond_16

    .line 274
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/AccessibilityInjector;->sendActionToAndroidVox(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_c

    .line 277
    :cond_16
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    if-eqz v1, :cond_c

    .line 278
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mAccessibilityInjectorFallback:Landroid/webkitsec/AccessibilityInjectorFallback;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/AccessibilityInjectorFallback;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_c
.end method

.method public supportsAccessibilityAction(I)Z
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 246
    sparse-switch p1, :sswitch_data_8

    .line 254
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 252
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 246
    nop

    :sswitch_data_8
    .sparse-switch
        0x10 -> :sswitch_5
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x400 -> :sswitch_5
        0x800 -> :sswitch_5
    .end sparse-switch
.end method

.method public toggleAccessibilityFeedback(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 162
    :cond_c
    :goto_c
    return-void

    .line 157
    :cond_d
    invoke-direct {p0, p1}, Landroid/webkitsec/AccessibilityInjector;->toggleAndroidVox(Z)V

    .line 159
    if-nez p1, :cond_c

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_c

    .line 160
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mTextToSpeech:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    goto :goto_c
.end method

.method public updateJavaScriptEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 457
    if-eqz p1, :cond_b

    .line 458
    invoke-virtual {p0}, Landroid/webkitsec/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 464
    :goto_5
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->reload()V

    .line 465
    return-void

    .line 460
    :cond_b
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjector;->removeAccessibilityApisIfNecessary()V

    goto :goto_5
.end method
