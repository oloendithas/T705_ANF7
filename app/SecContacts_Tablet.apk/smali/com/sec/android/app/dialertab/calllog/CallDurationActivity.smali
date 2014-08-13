.class public Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;
.super Landroid/app/Activity;
.source "CallDurationActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# static fields
.field public static final DURATION_ALL_VIDEO:Ljava/lang/String; = "all_video"

.field public static final DURATION_ALL_VIDEO_SIM2:Ljava/lang/String; = "all_video_sim2"

.field public static final DURATION_ALL_VOICE:Ljava/lang/String; = "all_voice"

.field public static final DURATION_ALL_VOICE_SIM2:Ljava/lang/String; = "all_voice_sim2"

.field public static final DURATION_ALL_VOIP:Ljava/lang/String; = "all_voip"

.field public static final DURATION_ALL_VOLTE:Ljava/lang/String; = "all_volte"

.field public static final DURATION_DIAL_VIDEO:Ljava/lang/String; = "dial_video"

.field public static final DURATION_DIAL_VIDEO_SIM2:Ljava/lang/String; = "dial_video_sim2"

.field public static final DURATION_DIAL_VOICE:Ljava/lang/String; = "dial_voice"

.field public static final DURATION_DIAL_VOICE_SIM2:Ljava/lang/String; = "dial_voice_sim2"

.field public static final DURATION_DIAL_VOIP:Ljava/lang/String; = "dial_voip"

.field public static final DURATION_DIAL_VOLTE:Ljava/lang/String; = "dial_volte"

.field public static final DURATION_ID:Ljava/lang/String; = "_id"

.field public static final DURATION_LAST_VIDEO:Ljava/lang/String; = "last_video"

.field public static final DURATION_LAST_VIDEO_SIM2:Ljava/lang/String; = "last_video_sim2"

.field public static final DURATION_LAST_VOICE:Ljava/lang/String; = "last_voice"

.field public static final DURATION_LAST_VOICE_SIM2:Ljava/lang/String; = "last_voice_sim2"

.field public static final DURATION_LAST_VOIP:Ljava/lang/String; = "last_voip"

.field public static final DURATION_LAST_VOLTE:Ljava/lang/String; = "last_volte"

.field public static final DURATION_RECE_VIDEO:Ljava/lang/String; = "rece_video"

.field public static final DURATION_RECE_VIDEO_SIM2:Ljava/lang/String; = "rece_video_sim2"

.field public static final DURATION_RECE_VOICE:Ljava/lang/String; = "rece_voice"

.field public static final DURATION_RECE_VOICE_SIM2:Ljava/lang/String; = "rece_voice_sim2"

.field public static final DURATION_RECE_VOIP:Ljava/lang/String; = "rece_voip"

.field public static final DURATION_RECE_VOLTE:Ljava/lang/String; = "rece_volte"

.field private static final FMC_PACKAGENAME:Ljava/lang/String; = "com.sec.android.voip"

.field public static final SIM_NUM1:I = 0x1

.field public static final SIM_NUM2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CallDurationActivity"

.field public static isSupportMultiWindow:Z

.field public static isVideoCapable:Z


# instance fields
.field private final DURATION_PROJ:[Ljava/lang/String;

.field private final DURATION_PROJ_CTC_DUOS:[Ljava/lang/String;

.field private FMC_MODE:Z

.field private isUsingTwoPanel:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mSimId:I

.field simNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isSupportMultiWindow:Z

    .line 118
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isVideoCapable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    .line 63
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    .line 123
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "last_voice"

    aput-object v1, v0, v4

    const-string v1, "last_video"

    aput-object v1, v0, v5

    const-string v1, "last_voip"

    aput-object v1, v0, v6

    const-string v1, "last_volte"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dial_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dial_voip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dial_volte"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rece_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "rece_volte"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "all_video"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "all_voip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "all_volte"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    .line 130
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "last_voice"

    aput-object v1, v0, v4

    const-string v1, "last_video"

    aput-object v1, v0, v5

    const-string v1, "last_voip"

    aput-object v1, v0, v6

    const-string v1, "dial_voice"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dial_voip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rece_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "all_video"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "all_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "last_video_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dial_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dial_video_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rece_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rece_video_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "all_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "all_video_sim2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ_CTC_DUOS:[Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 154
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_1

    .line 155
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 160
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 778
    const-wide/16 v1, 0x0

    .line 779
    .local v1, "hours":J
    const-wide/16 v3, 0x0

    .line 780
    .local v3, "minutes":J
    const-wide/16 v5, 0x0

    .line 782
    .local v5, "seconds":J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 783
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 784
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 786
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 787
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 788
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 790
    :cond_1
    move-wide v5, p1

    .line 792
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 793
    .local v0, "duration":Ljava/lang/StringBuffer;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 796
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 799
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private lastLogType()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 167
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "logtype"

    aput-object v0, v2, v8

    .line 168
    .local v2, "projection":[Ljava/lang/String;
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, "URI_LOGS":Landroid/net/Uri;
    const-string v9, ""

    .line 173
    .local v9, "sortOrder":Ljava/lang/String;
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v9, "date DESC, _id DESC"

    .line 182
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "logtype"

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, " = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/16 v0, 0x64

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, " OR "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, "logtype"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v0, " = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v0, 0x3e8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " LIMIT 1"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 193
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 194
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v12, :cond_4

    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_0
    :goto_1
    return v8

    .line 175
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "where":Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_2
    const-string v9, "_id DESC"

    goto :goto_0

    .line 179
    :cond_3
    const-string v9, "date DESC"

    goto :goto_0

    .line 199
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "where":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 200
    const-string v0, "logtype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 201
    .local v6, "column":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 203
    .local v8, "logType":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 729
    return-void
.end method

.method private resetDurationTable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 614
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 615
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 617
    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v1, "all_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "last_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v1, "dial_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v1, "rece_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    :goto_0
    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 662
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    if-nez v1, :cond_2

    .line 663
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    :goto_1
    return-void

    .line 630
    :cond_0
    const-string v1, "all_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    const-string v1, "all_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    const-string v1, "last_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string v1, "last_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string v1, "dial_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v1, "dial_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string v1, "rece_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v1, "rece_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 643
    :cond_1
    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v1, "all_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v1, "all_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string v1, "last_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string v1, "last_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v1, "dial_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string v1, "dial_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v1, "rece_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    const-string v1, "rece_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 665
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration_sim2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 668
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setClearTime()V
    .locals 8

    .prologue
    const/16 v7, 0x3a

    const-wide/16 v5, 0x0

    .line 732
    const/4 v1, 0x0

    .line 733
    .local v1, "voiceCallNumber":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 734
    .local v0, "videoCallNumber":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 736
    .local v2, "voipNumber":Landroid/widget/TextView;
    const v4, 0x7f0900af

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 737
    .restart local v1    # "voiceCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900b2

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 738
    .restart local v0    # "videoCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900b5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "voipNumber":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 740
    .restart local v2    # "voipNumber":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 741
    .local v3, "zeroDuration":Ljava/lang/StringBuffer;
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 743
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 745
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 747
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    const v4, 0x7f0900b7

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 752
    .restart local v1    # "voiceCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900ba

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 753
    .restart local v0    # "videoCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900bd

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "voipNumber":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 755
    .restart local v2    # "voipNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    const v4, 0x7f0900bf

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 760
    .restart local v1    # "voiceCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900c2

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 761
    .restart local v0    # "videoCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900c5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "voipNumber":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 763
    .restart local v2    # "voipNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    const v4, 0x7f0900c7

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 768
    .restart local v1    # "voiceCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900ca

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 769
    .restart local v0    # "videoCallNumber":Landroid/widget/TextView;
    const v4, 0x7f0900cd

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "voipNumber":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 771
    .restart local v2    # "voipNumber":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    return-void
.end method

.method private static toTwoDigitChar(J)Ljava/lang/String;
    .locals 4
    .param p0, "digit"    # J

    .prologue
    .line 805
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateWindowLayout()V
    .locals 8

    .prologue
    const v7, 0x7f0c01d3

    const v6, 0x7f0c01d2

    const/16 v5, 0x35

    const/4 v4, -0x1

    const v3, 0x3ecccccd

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 830
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 831
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 832
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 833
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 859
    :goto_0
    return-void

    .line 836
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 837
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 838
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 839
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 840
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 842
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 844
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 847
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 848
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 849
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 851
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 853
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 855
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 862
    const/4 v2, 0x0

    .line 864
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 865
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 866
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 872
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 599
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->updateWindowLayout()V

    .line 602
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 52
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isUsingTwoPanel:Z

    .line 216
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    const/16 v11, 0x400

    invoke-virtual {v3, v4, v11}, Landroid/view/Window;->setFlags(II)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 220
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 223
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->hasMultiWindwoFeature()Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isSupportMultiWindow:Z

    .line 225
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isSupportMultiWindow:Z

    if-eqz v3, :cond_1

    .line 226
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 230
    :cond_1
    const v3, 0x7f040020

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 231
    const v3, 0x7f0e0319

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->configureActionBar()V

    .line 239
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MetroPCS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    const/16 v19, 0x0

    .line 241
    .local v19, "mTotalLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .line 242
    .local v5, "mTotalCallTime":Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 243
    .local v6, "mTotalCallDial":Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 244
    .local v7, "mTotalCallReceive":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 245
    .local v8, "mTotalCount":Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 246
    .local v9, "mTotalCountDial":Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 248
    .local v10, "mTotalCountReceive":Landroid/widget/TextView;
    const v3, 0x7f0900ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "mTotalLayout":Landroid/widget/LinearLayout;
    check-cast v19, Landroid/widget/LinearLayout;

    .line 249
    .restart local v19    # "mTotalLayout":Landroid/widget/LinearLayout;
    const v3, 0x7f0900cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "mTotalCallTime":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 250
    .restart local v5    # "mTotalCallTime":Landroid/widget/TextView;
    const v3, 0x7f0900d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "mTotalCallDial":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 251
    .restart local v6    # "mTotalCallDial":Landroid/widget/TextView;
    const v3, 0x7f0900d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "mTotalCallReceive":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 252
    .restart local v7    # "mTotalCallReceive":Landroid/widget/TextView;
    const v3, 0x7f0900d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "mTotalCount":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 253
    .restart local v8    # "mTotalCount":Landroid/widget/TextView;
    const v3, 0x7f0900d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "mTotalCountDial":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 254
    .restart local v9    # "mTotalCountDial":Landroid/widget/TextView;
    const v3, 0x7f0900d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "mTotalCountReceive":Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 256
    .restart local v10    # "mTotalCountReceive":Landroid/widget/TextView;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 262
    .end local v5    # "mTotalCallTime":Landroid/widget/TextView;
    .end local v6    # "mTotalCallDial":Landroid/widget/TextView;
    .end local v7    # "mTotalCallReceive":Landroid/widget/TextView;
    .end local v8    # "mTotalCount":Landroid/widget/TextView;
    .end local v9    # "mTotalCountDial":Landroid/widget/TextView;
    .end local v10    # "mTotalCountReceive":Landroid/widget/TextView;
    .end local v19    # "mTotalLayout":Landroid/widget/LinearLayout;
    :cond_2
    const/16 v49, 0x0

    .line 263
    .local v49, "voiceCallNumber":Landroid/widget/TextView;
    const/16 v48, 0x0

    .line 264
    .local v48, "videoCallText":Landroid/widget/TextView;
    const/16 v47, 0x0

    .line 265
    .local v47, "videoCallNumber":Landroid/widget/TextView;
    const/16 v46, 0x0

    .line 266
    .local v46, "videoCall":Landroid/widget/RelativeLayout;
    const/16 v51, 0x0

    .line 267
    .local v51, "voipText":Landroid/widget/TextView;
    const/16 v50, 0x0

    .line 269
    .local v50, "voipNumber":Landroid/widget/TextView;
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 271
    .local v18, "intent":Landroid/content/Intent;
    const-string v3, "CallDurationTab"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    .line 274
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v17, 0x0

    .line 275
    .local v17, "c":Landroid/database/Cursor;
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CallDurationTab"

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    .line 278
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    if-nez v3, :cond_4

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v3, "content://logs/duration"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 293
    :goto_0
    if-nez v17, :cond_7

    .line 294
    const-string v3, "Duration"

    const-string v4, "cursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_1
    return-void

    .line 282
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v3, "content://logs/duration_sim2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_0

    .line 286
    :cond_5
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v3, "content://logs/duration"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ_CTC_DUOS:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_0

    .line 290
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v3, "content://logs/duration"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_0

    .line 297
    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    const-wide/16 v36, 0x0

    .line 299
    .local v36, "sum_lastvoice":J
    const-wide/16 v34, 0x0

    .line 300
    .local v34, "sum_lastvideo":J
    const-wide/16 v38, 0x0

    .line 301
    .local v38, "sum_lastvoip":J
    const-wide/16 v30, 0x0

    .line 302
    .local v30, "sum_dialvoice":J
    const-wide/16 v28, 0x0

    .line 303
    .local v28, "sum_dialvideo":J
    const-wide/16 v32, 0x0

    .line 304
    .local v32, "sum_dialvoip":J
    const-wide/16 v42, 0x0

    .line 305
    .local v42, "sum_recevoice":J
    const-wide/16 v40, 0x0

    .line 306
    .local v40, "sum_recevideo":J
    const-wide/16 v44, 0x0

    .line 307
    .local v44, "sum_recevoip":J
    const-wide/16 v24, 0x0

    .line 308
    .local v24, "sum_allvoice":J
    const-wide/16 v22, 0x0

    .line 309
    .local v22, "sum_allvideo":J
    const-wide/16 v26, 0x0

    .line 310
    .local v26, "sum_allvoip":J
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 311
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 312
    const-string v3, "last_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 316
    const-string v3, "dial_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 320
    const-string v3, "rece_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 324
    const-string v3, "all_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 343
    :cond_8
    :goto_2
    const-wide/16 v20, 0x0

    .line 348
    .local v20, "sumDuration":J
    const v3, 0x7f0900af

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .end local v49    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v49, Landroid/widget/TextView;

    .line 355
    .restart local v49    # "voiceCallNumber":Landroid/widget/TextView;
    const-string v3, "last_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 358
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 359
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_3
    const-string v3, "feature_volte_support_videocall"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 370
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isVideoCapable:Z

    .line 373
    :cond_9
    const v3, 0x7f0900b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    .end local v48    # "videoCallText":Landroid/widget/TextView;
    check-cast v48, Landroid/widget/TextView;

    .line 374
    .restart local v48    # "videoCallText":Landroid/widget/TextView;
    const v3, 0x7f0900b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    .end local v47    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v47, Landroid/widget/TextView;

    .line 381
    .restart local v47    # "videoCallNumber":Landroid/widget/TextView;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isVideoCapable:Z

    if-eqz v3, :cond_17

    .line 382
    :cond_a
    const v3, 0x7f0900b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 383
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_b
    :goto_4
    const-string v3, "last_video"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 393
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v3, 0x7f0900b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .end local v51    # "voipText":Landroid/widget/TextView;
    check-cast v51, Landroid/widget/TextView;

    .line 399
    .restart local v51    # "voipText":Landroid/widget/TextView;
    const v3, 0x7f0900b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    .end local v50    # "voipNumber":Landroid/widget/TextView;
    check-cast v50, Landroid/widget/TextView;

    .line 400
    .restart local v50    # "voipNumber":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_18

    .line 401
    const/16 v3, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    const/16 v3, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const v3, 0x7f0900cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    const v3, 0x7f0900bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 405
    const v3, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    const v3, 0x7f0900b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :goto_5
    const-string v3, "last_voip"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 415
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const v3, 0x7f0900b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .end local v49    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v49, Landroid/widget/TextView;

    .line 427
    .restart local v49    # "voiceCallNumber":Landroid/widget/TextView;
    const-string v3, "dial_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 430
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 431
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_6
    const v3, 0x7f0900b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    .end local v48    # "videoCallText":Landroid/widget/TextView;
    check-cast v48, Landroid/widget/TextView;

    .line 439
    .restart local v48    # "videoCallText":Landroid/widget/TextView;
    const v3, 0x7f0900ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    .end local v47    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v47, Landroid/widget/TextView;

    .line 447
    .restart local v47    # "videoCallNumber":Landroid/widget/TextView;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isVideoCapable:Z

    if-eqz v3, :cond_1a

    .line 448
    :cond_c
    const v3, 0x7f0900b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 449
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_d
    :goto_7
    const-string v3, "dial_video"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 459
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const v3, 0x7f0900bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .end local v51    # "voipText":Landroid/widget/TextView;
    check-cast v51, Landroid/widget/TextView;

    .line 465
    .restart local v51    # "voipText":Landroid/widget/TextView;
    const v3, 0x7f0900bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    .end local v50    # "voipNumber":Landroid/widget/TextView;
    check-cast v50, Landroid/widget/TextView;

    .line 466
    .restart local v50    # "voipNumber":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_e

    .line 467
    const/16 v3, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    const/16 v3, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_e
    const-string v3, "dial_voip"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 472
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const v3, 0x7f0900bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .end local v49    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v49, Landroid/widget/TextView;

    .line 484
    .restart local v49    # "voiceCallNumber":Landroid/widget/TextView;
    const-string v3, "rece_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 487
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 488
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :goto_8
    const v3, 0x7f0900c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    .end local v48    # "videoCallText":Landroid/widget/TextView;
    check-cast v48, Landroid/widget/TextView;

    .line 497
    .restart local v48    # "videoCallText":Landroid/widget/TextView;
    const v3, 0x7f0900c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    .end local v47    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v47, Landroid/widget/TextView;

    .line 504
    .restart local v47    # "videoCallNumber":Landroid/widget/TextView;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isVideoCapable:Z

    if-eqz v3, :cond_1c

    .line 505
    :cond_f
    const v3, 0x7f0900c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 506
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :cond_10
    :goto_9
    const-string v3, "rece_video"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 516
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    const v3, 0x7f0900c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .end local v51    # "voipText":Landroid/widget/TextView;
    check-cast v51, Landroid/widget/TextView;

    .line 522
    .restart local v51    # "voipText":Landroid/widget/TextView;
    const v3, 0x7f0900c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    .end local v50    # "voipNumber":Landroid/widget/TextView;
    check-cast v50, Landroid/widget/TextView;

    .line 523
    .restart local v50    # "voipNumber":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_11

    .line 524
    const/16 v3, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    const/16 v3, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_11
    const-string v3, "rece_voip"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 529
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const v3, 0x7f0900c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .end local v49    # "voiceCallNumber":Landroid/widget/TextView;
    check-cast v49, Landroid/widget/TextView;

    .line 535
    .restart local v49    # "voiceCallNumber":Landroid/widget/TextView;
    const v3, 0x7f0900c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    .end local v48    # "videoCallText":Landroid/widget/TextView;
    check-cast v48, Landroid/widget/TextView;

    .line 536
    .restart local v48    # "videoCallText":Landroid/widget/TextView;
    const v3, 0x7f0900ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    .end local v47    # "videoCallNumber":Landroid/widget/TextView;
    check-cast v47, Landroid/widget/TextView;

    .line 537
    .restart local v47    # "videoCallNumber":Landroid/widget/TextView;
    const v3, 0x7f0900cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .end local v51    # "voipText":Landroid/widget/TextView;
    check-cast v51, Landroid/widget/TextView;

    .line 538
    .restart local v51    # "voipText":Landroid/widget/TextView;
    const v3, 0x7f0900cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    .end local v50    # "voipNumber":Landroid/widget/TextView;
    check-cast v50, Landroid/widget/TextView;

    .line 546
    .restart local v50    # "voipNumber":Landroid/widget/TextView;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isVideoCapable:Z

    if-eqz v3, :cond_1d

    .line 547
    :cond_12
    const v3, 0x7f0900c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 548
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_14

    .line 558
    const/16 v3, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    const/16 v3, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    :cond_14
    const-string v3, "all_voice"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 570
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 571
    add-long v3, v30, v42

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :goto_b
    const-string v3, "all_video"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 577
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const-string v3, "all_voip"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 580
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 327
    .end local v20    # "sumDuration":J
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 328
    const-string v3, "last_voice_sim2"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 331
    const-string v3, "dial_voice_sim2"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 334
    const-string v3, "rece_voice_sim2"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 337
    const-string v3, "all_voice_sim2"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    goto/16 :goto_2

    .line 361
    .restart local v20    # "sumDuration":J
    :cond_16
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 385
    :cond_17
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 387
    const v3, 0x7f0900b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 388
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 408
    :cond_18
    const v3, 0x7f0900cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const v3, 0x7f0900bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 410
    const v3, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const v3, 0x7f0900b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 433
    :cond_19
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 451
    :cond_1a
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 452
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 453
    const v3, 0x7f0900b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 454
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 490
    :cond_1b
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 508
    :cond_1c
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 509
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 510
    const v3, 0x7f0900c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 511
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 550
    :cond_1d
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 551
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 552
    const v3, 0x7f0900c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .end local v46    # "videoCall":Landroid/widget/RelativeLayout;
    check-cast v46, Landroid/widget/RelativeLayout;

    .line 553
    .restart local v46    # "videoCall":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 573
    :cond_1e
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 676
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 677
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 678
    const v1, 0x7f0904d5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 679
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 608
    return-void
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 811
    const-string v0, "CallDurationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->updateWindowLayout()V

    .line 815
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 684
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 699
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 686
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->resetDurationTable()V

    .line 687
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setClearTime()V

    goto :goto_0

    .line 691
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->onHomeSelected()V

    goto :goto_0

    .line 684
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0904d5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 587
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 590
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->updateWindowLayout()V

    .line 593
    :cond_0
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 824
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 820
    return-void
.end method
