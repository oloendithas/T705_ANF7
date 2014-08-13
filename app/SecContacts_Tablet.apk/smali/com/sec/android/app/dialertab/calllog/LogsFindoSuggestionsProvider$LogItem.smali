.class Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
.super Ljava/lang/Object;
.source "LogsFindoSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogItem"
.end annotation


# instance fields
.field private mCNAPName:Ljava/lang/String;

.field private mCallIndiImage:Ljava/lang/String;

.field private mCallType:I

.field private mCountryISO:Ljava/lang/String;

.field private mE164NumberText:Ljava/lang/String;

.field private mGroupCount:I

.field private mId:I

.field private mImage1:Ljava/lang/String;

.field private mLogType:I

.field private mLookupURI:Ljava/lang/String;

.field private mNameText:Ljava/lang/String;

.field private mNumberText:Ljava/lang/String;

.field private mTimeText:J

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "image1"    # Ljava/lang/String;
    .param p4, "logType"    # I
    .param p5, "callType"    # I
    .param p6, "nameText"    # Ljava/lang/String;
    .param p7, "groupCount"    # I
    .param p8, "callIndiImage"    # Ljava/lang/String;
    .param p9, "numberText"    # Ljava/lang/String;
    .param p10, "e164NumberText"    # Ljava/lang/String;
    .param p11, "timeText"    # J
    .param p13, "cnapName"    # Ljava/lang/String;
    .param p14, "countryISO"    # Ljava/lang/String;
    .param p15, "lookupURI"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mId:I

    .line 135
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mImage1:Ljava/lang/String;

    .line 136
    iput p4, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I

    .line 137
    iput p5, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I

    .line 138
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mNameText:Ljava/lang/String;

    .line 139
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallIndiImage:Ljava/lang/String;

    .line 140
    iput-object p9, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mNumberText:Ljava/lang/String;

    .line 141
    iput-object p10, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mE164NumberText:Ljava/lang/String;

    .line 142
    iput-wide p11, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mTimeText:J

    .line 143
    iput-object p13, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCNAPName:Ljava/lang/String;

    .line 144
    iput-object p14, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCountryISO:Ljava/lang/String;

    .line 145
    iput-object p15, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCNAPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCNAPName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallIndiImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallIndiImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I

    return v0
.end method

.method public getCountryISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCountryISO:Ljava/lang/String;

    return-object v0
.end method

.method public getE164NumberText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mE164NumberText:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mGroupCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mId:I

    return v0
.end method

.method public getImage1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mImage1:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I

    return v0
.end method

.method public getLookupURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mNameText:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mNumberText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeText()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mTimeText:J

    return-wide v0
.end method

.method public setGroupCount(I)V
    .locals 0
    .param p1, "groupCount"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mGroupCount:I

    .line 191
    return-void
.end method

.method public setImage1(Ljava/lang/String;)V
    .locals 0
    .param p1, "image1"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mImage1:Ljava/lang/String;

    .line 194
    return-void
.end method
