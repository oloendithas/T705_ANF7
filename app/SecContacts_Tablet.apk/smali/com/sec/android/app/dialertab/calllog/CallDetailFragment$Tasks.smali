.class public final enum Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;
.super Ljava/lang/Enum;
.source "CallDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

.field public static final enum DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

.field public static final enum MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

.field public static final enum REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

.field public static final enum UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    const-string v1, "MARK_VOICEMAIL_READ"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    .line 134
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    const-string v1, "DELETE_VOICEMAIL_AND_FINISH"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    .line 135
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    const-string v1, "REMOVE_FROM_CALL_LOG_AND_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    .line 136
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    const-string v1, "UPDATE_PHONE_CALL_DETAILS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    const-class v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    return-object v0
.end method
