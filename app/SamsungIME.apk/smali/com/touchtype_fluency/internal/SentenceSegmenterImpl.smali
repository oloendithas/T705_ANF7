.class public Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;
.super Ljava/lang/Object;
.source "SentenceSegmenterImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/SentenceSegmenter;
.implements Lcom/touchtype_fluency/internal/Disposable;


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;->peer:J

    return-void
.end method

.method public static native initIDs()V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/touchtype_fluency/internal/SentenceSegmenterImpl;->peer:J

    return-void
.end method

.method public native isSentenceInitial(Lcom/touchtype_fluency/Sequence;)Z
.end method

.method public native isSentenceInitial(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)Z
.end method

.method public native split(Lcom/touchtype_fluency/Sequence;)[I
.end method

.method public native split(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)[I
.end method
