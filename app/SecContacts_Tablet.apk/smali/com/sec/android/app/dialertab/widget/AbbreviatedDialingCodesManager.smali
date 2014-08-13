.class public Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;
.super Ljava/lang/Object;
.source "AbbreviatedDialingCodesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;,
        Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;,
        Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;
    }
.end annotation


# static fields
.field private static ADCList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;",
            ">;"
        }
    .end annotation
.end field

.field private static CallInterceptList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AbbreviatedDialingCodesManager"


# instance fields
.field private final ACTION_CSC_CHAMELEON:Ljava/lang/String;

.field private final CSC_CHAMELEON_FILE:Ljava/lang/String;

.field private final PATH_ADC_EIGHTH:Ljava/lang/String;

.field private final PATH_ADC_ELEVENTH:Ljava/lang/String;

.field private final PATH_ADC_FIFTH:Ljava/lang/String;

.field private final PATH_ADC_FIRST:Ljava/lang/String;

.field private final PATH_ADC_FOURTH:Ljava/lang/String;

.field private final PATH_ADC_NINTH:Ljava/lang/String;

.field private final PATH_ADC_SECOND:Ljava/lang/String;

.field private final PATH_ADC_SEVENTH:Ljava/lang/String;

.field private final PATH_ADC_SIXTH:Ljava/lang/String;

.field private final PATH_ADC_TENTH:Ljava/lang/String;

.field private final PATH_ADC_THIRD:Ljava/lang/String;

.field private final PATH_ADC_TWELFTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_EIGHTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_ELEVENTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_FIFTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_FIRST:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_FOURTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_NINTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_SECOND:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_SEVENTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_SIXTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_TENTH:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_THIRD:Ljava/lang/String;

.field private final PATH_CALLINTERCEPT_TWELFTH:Ljava/lang/String;

.field private adc1:Ljava/lang/String;

.field private adc10:Ljava/lang/String;

.field private adc11:Ljava/lang/String;

.field private adc12:Ljava/lang/String;

.field private adc2:Ljava/lang/String;

.field private adc3:Ljava/lang/String;

.field private adc4:Ljava/lang/String;

.field private adc5:Ljava/lang/String;

.field private adc6:Ljava/lang/String;

.field private adc7:Ljava/lang/String;

.field private adc8:Ljava/lang/String;

.field private adc9:Ljava/lang/String;

.field private callIntercept1:Ljava/lang/String;

.field private callIntercept10:Ljava/lang/String;

.field private callIntercept11:Ljava/lang/String;

.field private callIntercept12:Ljava/lang/String;

.field private callIntercept2:Ljava/lang/String;

.field private callIntercept3:Ljava/lang/String;

.field private callIntercept4:Ljava/lang/String;

.field private callIntercept5:Ljava/lang/String;

.field private callIntercept6:Ljava/lang/String;

.field private callIntercept7:Ljava/lang/String;

.field private callIntercept8:Ljava/lang/String;

.field private callIntercept9:Ljava/lang/String;

.field public fileExist:Z

.field private mCallInterceptCount:I

.field private mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

.field receiverChameleon:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CSC_CHAMELEON_FILE:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->fileExist:Z

    .line 43
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mCallInterceptCount:I

    .line 88
    const-string v0, "CallIntercept.First"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_FIRST:Ljava/lang/String;

    .line 89
    const-string v0, "CallIntercept.Second"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_SECOND:Ljava/lang/String;

    .line 90
    const-string v0, "CallIntercept.Third"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_THIRD:Ljava/lang/String;

    .line 91
    const-string v0, "CallIntercept.Fourth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_FOURTH:Ljava/lang/String;

    .line 92
    const-string v0, "CallIntercept.Fifth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_FIFTH:Ljava/lang/String;

    .line 93
    const-string v0, "CallIntercept.Sixth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_SIXTH:Ljava/lang/String;

    .line 94
    const-string v0, "CallIntercept.Seventh"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_SEVENTH:Ljava/lang/String;

    .line 95
    const-string v0, "CallIntercept.Eighth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_EIGHTH:Ljava/lang/String;

    .line 96
    const-string v0, "CallIntercept.Ninth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_NINTH:Ljava/lang/String;

    .line 97
    const-string v0, "CallIntercept.Tenth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_TENTH:Ljava/lang/String;

    .line 98
    const-string v0, "CallIntercept.Eleventh"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_ELEVENTH:Ljava/lang/String;

    .line 99
    const-string v0, "CallIntercept.Twelfth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_CALLINTERCEPT_TWELFTH:Ljava/lang/String;

    .line 101
    const-string v0, "Adc.First"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_FIRST:Ljava/lang/String;

    .line 102
    const-string v0, "Adc.Second"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_SECOND:Ljava/lang/String;

    .line 103
    const-string v0, "Adc.Third"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_THIRD:Ljava/lang/String;

    .line 104
    const-string v0, "Adc.Fourth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_FOURTH:Ljava/lang/String;

    .line 105
    const-string v0, "Adc.Fifth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_FIFTH:Ljava/lang/String;

    .line 106
    const-string v0, "Adc.Sixth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_SIXTH:Ljava/lang/String;

    .line 107
    const-string v0, "Adc.Seventh"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_SEVENTH:Ljava/lang/String;

    .line 108
    const-string v0, "Adc.Eighth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_EIGHTH:Ljava/lang/String;

    .line 109
    const-string v0, "Adc.Ninth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_NINTH:Ljava/lang/String;

    .line 110
    const-string v0, "Adc.Tenth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_TENTH:Ljava/lang/String;

    .line 111
    const-string v0, "Adc.Eleventh"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_ELEVENTH:Ljava/lang/String;

    .line 112
    const-string v0, "Adc.Twelfth"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->PATH_ADC_TWELFTH:Ljava/lang/String;

    .line 115
    const-string v0, "android.intent.action.CSC_CHAMELEON"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ACTION_CSC_CHAMELEON:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->updateCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->fileExist:Z

    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->registerReceiver(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method private dialSplitADC(Ljava/lang/String;)V
    .locals 5
    .param p1, "rawString"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "mNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 324
    .local v2, "mService":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v4, ","

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;

    move-result-object v3

    .local v3, "split":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;
    if-eqz v3, :cond_0

    .line 328
    iget-object v1, v3, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->left:Ljava/lang/String;

    .line 329
    iget-object v2, v3, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->right:Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;-><init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v0, "itemList":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;
    sget-object v4, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ADCList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private dialSplitCallInterceptInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "rawString"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "mNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 276
    .local v3, "separator1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 277
    .local v4, "separator2":Ljava/lang/String;
    const/4 v8, 0x0

    .line 278
    .local v8, "mIntent":Ljava/lang/String;
    const/4 v7, 0x0

    .line 281
    .local v7, "mEndMark":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v1, ","

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;

    move-result-object v9

    .local v9, "split":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;
    if-eqz v9, :cond_2

    .line 285
    iget-object v2, v9, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->left:Ljava/lang/String;

    .line 286
    iget-object v3, v9, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->right:Ljava/lang/String;

    .line 288
    :cond_2
    if-eqz v2, :cond_0

    .line 289
    const-string v1, ","

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 290
    iget-object v3, v9, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->left:Ljava/lang/String;

    .line 291
    iget-object v4, v9, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->right:Ljava/lang/String;

    .line 293
    :cond_3
    const-string v1, ","

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 294
    iget-object v4, v9, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->left:Ljava/lang/String;

    .line 295
    iget-object v8, v9, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->right:Ljava/lang/String;

    .line 298
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    :try_start_0
    const-string v1, "intent:"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    :cond_5
    const/4 v1, 0x1

    invoke-static {v8, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 306
    .local v5, "realIntent":Landroid/content/Intent;
    new-instance v0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;-><init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 311
    .local v0, "itemList":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "itemList":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;
    .end local v5    # "realIntent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 313
    .local v6, "e":Ljava/net/URISyntaxException;
    const-string v1, "AbbreviatedDialingCodesManager"

    const-string v10, "Problem parsing Call Intercept intent"

    invoke-static {v1, v10, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CSC_CHAMELEON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;-><init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->receiverChameleon:Landroid/content/BroadcastReceiver;

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->receiverChameleon:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method private split(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 342
    if-nez p1, :cond_0

    move-object v1, v2

    .line 352
    :goto_0
    return-object v1

    .line 345
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "position":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    .line 347
    new-instance v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;-><init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;)V

    .line 348
    .local v1, "result":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->left:Ljava/lang/String;

    .line 349
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;->right:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "result":Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$Split;
    :cond_1
    move-object v1, v2

    .line 352
    goto :goto_0
.end method


# virtual methods
.method public dialADCCheckNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 259
    if-nez p1, :cond_0

    move-object v1, v2

    .line 269
    :goto_0
    return-object v1

    .line 262
    :cond_0
    const-string v1, "AbbreviatedDialingCodesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>dialADCCheckNumber<<<<<<<<<<<<<< ADCList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ADCList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ADCList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 265
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ADCList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ADCList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->getService()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 269
    goto :goto_0
.end method

.method public dialCheckNumber(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "mNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 245
    if-nez p1, :cond_0

    move-object v1, v2

    .line 255
    :goto_0
    return-object v1

    .line 248
    :cond_0
    const-string v1, "AbbreviatedDialingCodesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>dialCheckNumber<<<<<<<<<<<<<< CallInterceptList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 251
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    sget-object v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$CallInterceptItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 255
    goto :goto_0
.end method

.method public splitTest()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mCallInterceptCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->receiverChameleon:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method public updateCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mCallInterceptCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CallInterceptList:Ljava/util/ArrayList;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mCallInterceptCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->ADCList:Ljava/util/ArrayList;

    .line 174
    const-string v2, "AbbreviatedDialingCodesManager"

    const-string v3, ">>>>>>>>>>>>>updateCall<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CSC_CHAMELEON_FILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->CSC_CHAMELEON_FILE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->getChameleonInstance(Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/CscParser;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.First"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept1:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Second"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept2:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Third"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept3:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Fourth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept4:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Fifth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept5:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Sixth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept6:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Seventh"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept7:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Eighth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept8:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Ninth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept9:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Tenth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept10:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Eleventh"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept11:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "CallIntercept.Twelfth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept12:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept3:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept4:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept5:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept6:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept7:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept8:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept9:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept10:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept11:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->callIntercept12:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitCallInterceptInfo(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.First"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc1:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Second"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc2:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Third"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc3:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Fourth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc4:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Fifth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc5:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Sixth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc6:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Seventh"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc7:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Eighth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc8:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Ninth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc9:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Tenth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc10:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Eleventh"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc11:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->mParser:Lcom/sec/android/app/dialertab/widget/CscParser;

    const-string v2, "Adc.Twelfth"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc12:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc3:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc4:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc5:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc6:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc7:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc8:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc9:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc10:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc11:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->adc12:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialSplitADC(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x1

    goto/16 :goto_0
.end method
