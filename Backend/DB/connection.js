import mongoose from "mongoose";

const db = process.env.MONGO_URL || "mongodb://mongo:27017/Main";

const connectDb = () => {
  return mongoose
    .connect(db)
    .then(() => {
      console.log("✅ MongoDB connected");
    })
    .catch((err) => {
      console.log("❌ MongoDB connection error:", err);
    });
};

export default connectDb;
